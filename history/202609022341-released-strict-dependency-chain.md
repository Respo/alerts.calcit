# Released strict dependency chain / 已发布的严格依赖链

- Upgrade direct dependencies to Respo 0.16.89, respo-ui 0.7.14, Reel 0.6.11, and respo-markdown 0.4.29.
- 将直接依赖升级到 Respo 0.16.89、respo-ui 0.7.14、Reel 0.6.11 与 respo-markdown 0.4.29。
- The released graph now resolves router 0.8.8 and js-ffi 0.1.11 consistently under Caps strict mode.
- 已发布依赖图现在可在 Caps strict 模式下一致解析 router 0.8.8 与 js-ffi 0.1.11。
- Avoid repeated `_` bindings in the dispatch enum match to work around the Calcit 0.13.75 JS codegen bug tracked in calcit-lang/calcit#594.
- 避免 dispatch enum match 中重复绑定 `_`，规避 calcit-lang/calcit#594 跟踪的 Calcit 0.13.75 JS codegen 问题。
