import assert from 'node:assert/strict';
import test from 'node:test';
import * as c from '../js-out/calcit.core.mjs';
import { comp_prompt_modal } from '../js-out/respo-alerts.core.mjs';
import { make_string } from '../js-out/respo.render.html.mjs';

const states = c.parse_cirru_edn('{} (:cursor $ [])');
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
