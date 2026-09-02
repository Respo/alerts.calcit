# Nominal hook return types / Hook 的 nominal 返回类型

## English

- Replace broad `Enum` return schemas on all six alert hooks with their exact nominal `impl-traits` wrapper types.
- Preserve the existing source-facing `.show` APIs while giving the compiler enough receiver identity to select stable internal callables.
- Validate the change through msg-buffer with `config modules` pointing directly at this local checkout.

## 中文

- 将六个 alerts hook 的宽泛 `Enum` 返回 schema 替换为各自精确的 nominal `impl-traits` 包装类型。
- 保持现有源码侧 `.show` API 不变，同时为编译器提供足够的接收者身份，以选择稳定的内部 callable。
- 通过 msg-buffer 的 `config modules` 直接指向本地 checkout 完成联动验证。
