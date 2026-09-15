# Route Alerts DOM access through typed external-object adapters

The `AlertsDom`/`AlertsDomStyle` external-object traits declared DOM members but
inline `(.focus (unsafe-coerce target AlertsDom))` was not lowered by Calcit
0.14.16: codegen emitted dynamic `invoke_method("focus", target)` and literal
`target["first-element-child"]` reads, so runtime threw
`No implementation for [object HTMLButtonElement] to lookup .focus` and modal
effects read `undefined`.

- Add small adapters whose parameters are typed as `AlertsDom`/`AlertsDomStyle`
  (`dom-focus!`, `dom-select!`, `dom-remove!`, `dom-clone-node`,
  `dom-dispatch-event`, `dom-stop-propagation!`, `dom-first-element-child`,
  `dom-style`) and call them from `respo-alerts.core`. Codegen now lowers the
  methods/fields to direct JavaScript access.
- Fix the `AlertsDom` field declarations to pairs so the trait exposes
  `:first-element-child`/`:style` correctly, and coerce the nullable
  `first-element-child` result where a non-null handle is required.
- `calcit calcit.cirru js`, `--compat-types --check-only`, and the 6 prompt
  regression tests pass.
