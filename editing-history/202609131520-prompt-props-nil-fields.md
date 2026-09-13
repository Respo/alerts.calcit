# Fix prompt props for Calcit 0.14.16 nil semantics

The prompt modal built `DomProps` with `js/undefined` for unset attributes.
Under Calcit 0.14.16 the JS backend emits real `undefined` for `js/undefined`,
while `some?`/`nil?` treat `null` as absent. Respo's `normalize-dom-props` and
`props->html` filtered with `some?`, so `undefined` fields were kept and
`turn-string` failed while rendering the prompt input/textarea.

- Use `nil` for unset `DomProps` fields and the absent-placeholder fallback in
  `comp-prompt-modal` so Respo filters them before attribute rendering.
- `scripts/prompt-render.test.mjs`: 6/6 pass.
- `calcit calcit.cirru --check-only`: passes.
- Updating unset fields to `nil` raises `codeNil` (48 → 75) and `unresolved`
  (125 → 140) in the upgrade baseline; the baseline is updated because the
  prompt now models unset props explicitly instead of with `js/undefined`.

Also bumps `Respo/reel.calcit` to 0.6.22, which fixes an `Option` destructure in
`play-records` that failed downstream strict checks.
