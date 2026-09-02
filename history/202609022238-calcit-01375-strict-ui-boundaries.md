# Calcit 0.13.75 strict UI boundaries / 严格 UI 边界

- Upgraded the Calcit project and JS runtime contract to 0.13.75.
- Constructed shared input properties as nominal `DomProps` and extended them with `struct-with`.
- Narrowed keyboard events before reading their key field.
- Replaced mixed list/tag dispatch inspection with nominal operation matching and an `Enum` dispatch schema.
- Project-local strict warnings are now zero; final CI readiness follows the Respo → Reel release chain.

- 将 Calcit 项目与 JS runtime 契约升级到 0.13.75。
- 将共享输入属性构造为 nominal `DomProps`，并用 `struct-with` 扩展。
- 在读取键值前收窄 keyboard event 类型。
- 用 nominal operation 匹配替代 list/tag 混合检查，并将 dispatch schema 收紧为 `Enum`。
- 项目自身严格类型告警已清零；最终 CI 可合并状态依赖 Respo → Reel 的发布链。
