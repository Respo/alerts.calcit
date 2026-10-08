import assert from 'node:assert/strict';
import test from 'node:test';
import { execFileSync } from 'node:child_process';
import { copyFile, mkdir, mkdtemp, readFile, rm, symlink } from 'node:fs/promises';
import { join, resolve } from 'node:path';
import { pathToFileURL } from 'node:url';
import * as c from '../js-out/calcit.core.mjs';
import { comp_prompt_modal, comp_modal_menu, comp_confirm_modal } from '../js-out/respo-alerts.core.mjs';
import { comp_trigger } from '../js-out/respo-alerts.trigger.mjs';
import { make_string } from '../js-out/respo.render.html.mjs';

const states = c.parse_cirru_edn('{} (:cursor $ [])');

test('canonical attached tests replay on native and generated JavaScript', async () => {
  const invoke = (snapshot, ...args) => execFileSync(process.env.CALCIT_BIN ?? 'calcit', [snapshot, ...args],
    { encoding: 'utf8', timeout: 60000, maxBuffer: 16 * 1024 * 1024,
      stdio: ['ignore', 'pipe', 'pipe'] });
  const canonical = resolve('calcit.cirru');
  const before = await readFile(canonical);
  const selected = JSON.parse(invoke(canonical, 'test', '--list', '--require-match', '--format', 'json'));
  assert.ok(selected.tests.length > 0, 'attached replay must not silently select zero tests');
  await mkdir('.calcit', { recursive: true });
  const directory = await mkdtemp(resolve('.calcit/alerts-attached-'));
  const snapshot = join(directory, 'calcit.cirru');
  try {
    await copyFile(canonical, snapshot);
    await copyFile('deps.cirru', join(directory, 'deps.cirru'));
    await mkdir(join(directory, '.calcit'));
    await symlink(resolve('.calcit/modules'), join(directory, '.calcit/modules'), 'dir');
    await symlink(resolve('node_modules'), join(directory, 'node_modules'), 'dir');
    invoke(snapshot, 'docs', 'agents', '--contract');
    // The app defaults to JS; native replay must not rewrite its ordinary js-out graph.
    const operations = [['config', 'set', 'mode', 'native']];
    const calls = [];
    const features = new Set();
    for (const [index, item] of selected.tests.entries()) {
      const separator = item.id.indexOf('#');
      const owner = item.id.slice(0, separator);
      const name = item.id.slice(separator + 1);
      const definition = JSON.parse(invoke(snapshot, 'query', 'def', owner, '--format', 'json')).data;
      const attached = definition.tests.find((item) => item.name === name);
      assert.ok(attached, `missing canonical AST for ${item.id}`);
      const target = `${owner.slice(0, owner.indexOf('/'))}/replay-attached-${index}`;
      const schemaMap = definition.schema?.[0] === '{}' ? definition.schema
        : definition.schema?.find?.((node) => Array.isArray(node) && node[0] === '{}');
      const ownerFeatures = schemaMap?.find((node) => node[0] === ':features')?.[1]?.slice(1) ?? [];
      ownerFeatures.forEach((feature) => features.add(feature));
      operations.push(['edit', 'def', target, '--input-format', 'json-ast', '--code',
        JSON.stringify(['defn', target.split('/')[1], [], attached.code, '&unit'])]);
      operations.push(['edit', 'schema', target, '--input-format', 'json-ast', '--code',
        JSON.stringify(['::', "'Fn", ['{}', [':args', ['[]']], [':return', "'Unit"],
          [':features', ['#{}', ...ownerFeatures]]]])]);
      calls.push([target]);
    }
    const entry = 'respo-alerts.core/replay-attached!';
    operations.push(['edit', 'def', entry, '--input-format', 'json-ast', '--code',
      JSON.stringify(['defn', 'replay-attached!', [], ...calls, '&unit'])]);
    operations.push(['edit', 'schema', entry, '--input-format', 'json-ast', '--code',
      JSON.stringify(['::', "'Fn", ['{}', [':args', ['[]']], [':return', "'Unit"],
        [':features', ['#{}', ...features]]]])]);
    const args = ['edit', 'transaction', '--code', JSON.stringify(operations)];
    const preview = JSON.parse(invoke(snapshot, ...args, '--dry-run', '--format', 'json'));
    invoke(snapshot, ...args, '--expect-revision', preview.original_revision, '--format', 'edn');
    const roots = ['--init-fn', entry, '--reload-fn', entry];
    invoke(snapshot, ...roots);
    const output = join(directory, 'js');
    invoke(snapshot, ...roots, '--emit-path', output, 'js');
    // A separate process keeps the replay's core trait registrations out of the render graph.
    execFileSync(process.execPath, ['--input-type=module', '--eval',
      `const tests = await import(${JSON.stringify(pathToFileURL(join(output, 'respo-alerts.core.mjs')).href)}); tests.replay_attached_$x_();`],
      { timeout: 60000, stdio: 'inherit' });
    console.log(`Alerts: ${selected.tests.length} canonical tests replayed on native/generated JS`);
  } finally {
    try {
      assert.deepEqual(await readFile(canonical), before, 'replay must preserve canonical Snapshot bytes');
    } finally {
      await rm(directory, { recursive: true, force: true });
    }
  }
});

/** Find the first named Element in the local nominal component tree without revisiting objects. */
function findElement(node, name, seen = new WeakSet()) {
  if (node === null || typeof node !== 'object' || seen.has(node)) return null;
  seen.add(node);
  if (node.name?.value === 'Element') {
    const fields = node.fields.map((field) => field.value);
    if (node.values[fields.indexOf('name')]?.value === name) return node;
  }
  for (const key of ['values', 'extra', 'value', 'chunk']) {
    if (!Array.isArray(node[key])) continue;
    for (const child of node[key]) {
      const found = findElement(child, name, seen);
      if (found !== null) return found;
    }
  }
  if (Array.isArray(node)) {
    for (const child of node) {
      const found = findElement(child, name, seen);
      if (found !== null) return found;
    }
  }
  return null;
}

/** Read a rendered Element's click callback, failing if the expected handler is absent. */
function clickHandler(element) {
  assert.ok(element, 'click target must be rendered');
  const events = element.values[element.fields.findIndex((field) => field.value === 'event')];
  const index = events.chunk.findIndex((key) => key?.value === 'click');
  assert.ok(index >= 0, 'target must have a click handler');
  return events.chunk[index + 1];
}

test('confirm delivers the checked event map and dispatch before closing', () => {
  const calls = [];
  const dispatch = () => {};
  const event = c.parse_cirru_edn('{} (:type :click) (:value |confirmed)');
  const component = comp_confirm_modal(c.parse_cirru_edn('{}'), true,
    (received, receivedDispatch) => calls.push(['confirm', received, receivedDispatch]),
    (receivedDispatch) => calls.push(['close', receivedDispatch]));
  const click = clickHandler(findElement(component, 'button'));
  click(event, dispatch);
  assert.deepEqual(calls, [['confirm', event, dispatch], ['close', dispatch]]);
  calls.length = 0;
  for (const missingType of [c.parse_cirru_edn('{}'), c.parse_cirru_edn('{} (:value |confirmed)')]) {
    assert.throws(() => click(missingType, dispatch), /Confirm event requires :type/);
    assert.deepEqual(calls, [], 'missing type must not invoke application callbacks');
  }
  for (const invalid of [null, 42, {}, c.parse_cirru_edn('{} (|type :click)')]) {
    assert.throws(() => click(invalid, dispatch));
    assert.deepEqual(calls, [], 'invalid events must not invoke application callbacks');
  }
});

test('trigger supports absent styles and active overrides without changing child rendering', () => {
  const child = comp_prompt_modal(states, c.parse_cirru_edn('{}'), false, () => {}, () => {});
  for (const active of [false, true]) {
    assert.doesNotMatch(make_string(comp_trigger(active, child, null)), /undefined/);
    const options = c.parse_cirru_edn('{} (:trigger-style $ {} (:color |blue)) (:trigger-active-style $ {} (:color |red))');
    assert.match(make_string(comp_trigger(active, child, options)), active ? /color:red/ : /color:blue/);
  }
  assert.throws(() => comp_trigger(true, child,
    c.parse_cirru_edn('{} (:trigger-active-style 42)')), /Style must be Map or nil/);
});

test('menu renders and selects Enum and Map items, including clear and style overrides', () => {
  const selected = [];
  const options = c.parse_cirru_edn('{} (:title |Choose) (:style $ {} (:padding 12)) (:items $ [] (:: :item |a |A) ({} (:value :b) (:display |B)))');
  const component = comp_modal_menu(options, true, () => {}, (item) => selected.push(item));
  const html = make_string(component);
  assert.match(html, /Choose/);
  assert.match(html, /padding:12px/);
  assert.match(html, />A</);
  assert.match(html, />B</);
  // The title's Clear button is the first span with a click handler.
  const findClick = (node, text) => {
    if (node === null || typeof node !== 'object') return null;
    if (node.name?.value === 'Element') {
      const markup = make_string(node);
      if (markup.includes(text) && !markup.includes('<div', 1)) {
        const events = node.values[node.fields.findIndex((field) => field.value === 'event')];
        if (events?.chunk?.some((key) => key?.value === 'click')) return node;
      }
    }
    for (const key of ['values', 'extra', 'value', 'chunk']) {
      if (!Array.isArray(node[key])) continue;
      for (const child of node[key]) {
        const found = findClick(child, text);
        if (found !== null) return found;
      }
    }
    if (Array.isArray(node)) for (const child of node) {
      const found = findClick(child, text);
      if (found !== null) return found;
    }
    return null;
  };
  clickHandler(findClick(component, '>A<'))({}, () => {});
  clickHandler(findClick(component, '>B<'))({}, () => {});
  clickHandler(findClick(component, '>Clear<'))({}, () => {});
  assert.deepEqual(selected.map((item) => item === null ? null : c.to_js_data(item)),
    [['item', 'a', 'A'], ['item', 'b', 'B'], null]);
  assert.throws(() => comp_modal_menu(c.parse_cirru_edn('{} (:items $ {})'), true,
    () => {}, () => assert.fail('invalid input must not call selection')), /Menu items must be List/);
});

test('prompt reopens with its current initial value after submitting', () => {
  const options = c.parse_cirru_edn('{} (:initial |saved-text)');
  const submitted = [];
  const updates = [];
  const component = comp_prompt_modal(states, options, true,
    (value) => submitted.push(value), () => {});
  assert.match(make_string(component), /value="saved-text"/);

  const button = findElement(component, 'button');
  assert.ok(button, 'prompt submit button must be rendered');
  const event = button.values[button.fields.findIndex((field) => field.value === 'event')];
  const clickIndex = event.chunk.findIndex((key) => key?.value === 'click');
  assert.ok(clickIndex >= 0, 'submit button must have a click handler');
  event.chunk[clickIndex + 1]({}, (_cursor, state) => updates.push(state));

  assert.deepEqual(submitted, ['saved-text']);
  assert.equal(updates.at(-1)?.chunk?.length, 0, 'closing must discard stale input state');
  const updatedOptions = c.parse_cirru_edn('{} (:initial |updated-text)');
  const reopened = comp_prompt_modal(c.parse_cirru_edn('{} (:cursor $ []) (:data $ {})'),
    updatedOptions, true, () => {}, () => {});
  assert.match(make_string(reopened), /value="updated-text"/);
});

for (const multiline of [false, true]) {
  for (const [name, setting, expected] of [
    ['absent', '', undefined],
    ['empty', '(:placeholder |)', ''],
    ['provided', '(:placeholder |Example)', 'Example'],
    ['unicode', '(:placeholder |请输入😀)', '请输入😀'],
  ]) {
    test(`${multiline ? 'textarea' : 'input'} renders with ${name} placeholder`, () => {
      const options = c.parse_cirru_edn(`{} (:multiline? ${multiline}) ${setting}`);
      const unexpectedCallback = () => assert.fail('render must not invoke event callbacks');
      const component = comp_prompt_modal(states, options, true,
        unexpectedCallback, unexpectedCallback);
      const html = make_string(component);
      const control = html.match(multiline ? /<textarea\b[^>]*>/ : /<input\b[^>]*>/)?.[0];
      assert.ok(control, 'prompt control must be rendered');
      if (expected === undefined) assert.doesNotMatch(control, /placeholder=/);
      else assert.ok(control.includes(`placeholder="${expected}"`));
      assert.doesNotMatch(control, /undefined/);
    });
  }

  for (const [name, setting] of [
    ['number', '(:placeholder 42)'], ['boolean', '(:placeholder true)'],
    ['tag', '(:placeholder :Example)'], ['map', '(:placeholder $ {})'],
    ['list', '(:placeholder $ [])'],
  ]) {
    test(`${multiline ? 'textarea' : 'input'} rejects ${name} placeholder`, () => {
      const options = c.parse_cirru_edn(`{} (:multiline? ${multiline}) ${setting}`);
      const unexpectedCallback = () => assert.fail('invalid options must not invoke callbacks');
      assert.throws(() => comp_prompt_modal(states, options, true,
        unexpectedCallback, unexpectedCallback), /String/);
    });
  }
}
