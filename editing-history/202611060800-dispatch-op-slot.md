# 库内分发回调改用 `*dispatch-op`

方向见 Jon 2026-11-06：减少生态里的 `AnyEnum`，dispatch 回调走 type slot。

- 库内组件的 `d!` 回调、`ModalActions` 等 trait 的 `.show` / `.close`、测试里的分发桩，从 `Fn AnyEnum …` 改为 `Fn *dispatch-op …`，与 README 0.14.0 说明一致。使用者传入只接受自己 `Op` 的分发函数时不再被逆变检查拒绝。
- Demo（`respo-alerts.main`、`comp-container`、`updater`）仍用 `AnyEnum`：`dispatch!` 要传给 Reel 0.9.2 的 `listen-devtools!`，它要求 `Fn AnyEnum (-> Unit)`。Reel 0.10.0 发布后改用 `listen-devtools-toggle!` 再收紧。

验证（Calcit 0.35.1）：`--check-only --all-defs`、`test --tag unit --require-match`、`calcit js` 通过。
