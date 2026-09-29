import assert from 'node:assert/strict';
import test from 'node:test';
import * as c from '../js-out/calcit.core.mjs';
import { comp_prompt_modal } from '../js-out/respo-alerts.core.mjs';
import { make_string } from '../js-out/respo.render.html.mjs';

const states = c.parse_cirru_edn('{} (:cursor $ [])');

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
  assert.equal(updates.at(-1), null, 'closing must discard stale input state');
  const updatedOptions = c.parse_cirru_edn('{} (:initial |updated-text)');
  const reopened = comp_prompt_modal(c.parse_cirru_edn('{} (:cursor $ []) (:data nil)'),
    updatedOptions, true, () => {}, () => {});
  assert.match(make_string(reopened), /value="updated-text"/);
});

for (const multiline of [false, true]) {
  for (const [name, setting, expected] of [
    ['absent', '', undefined],
    ['empty', '(:placeholder |)', ''],
    ['provided', '(:placeholder |Example)', 'Example'],
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
}
