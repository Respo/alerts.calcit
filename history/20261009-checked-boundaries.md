## 追加：确认事件缺失字段的评论修复

确认按钮先执行原有 Map<Tag, Dynamic> decoder，再检查 `:type` 是否存在。空 Calcit Map 和只有 `:value` 的 Map 在 confirm / close 前明确拒绝。合法事件原值、dispatch 身份以及先 confirm 后 close 的顺序保持。

测试将真正的缺少 `:type` 的 Calcit Map 与 JS `{}` 容器分开，前者断言 `Confirm event requires :type`，全部非法输入均验证没有业务回调。16 项原生测试、24 项 Node 测试（含 native / JS attached replay）、95 项公开定义通过；quality baseline 计数保持不变，Snapshot 格式及 diff 检查通过。版本仍为 0.10.49-alpha.3。

# 2026-10-09：样式及确认事件的受检边界

- 样式合并用 `decode-map-as` 检查开放 Map，保留 nil、空 Map、右侧覆盖和原有非法容器错误。移除匿名 helper，保留真实 nil 分支的值。
- 确认回调按 Respo 实际投递的 `Map<Tag, Dynamic>` 接收事件；在按钮回调边界检查。options 的值使用泛型 OptionsValue，保留具体调用方的值类型。
- `use-confirm` 的状态文本复用 `read-text` 检查；确认及关闭回调明确返回 Unit。

验证：16 项原生 attached tests；24 项 Node 渲染测试（含全部 attached tests 在原生/JS 回放）；95/95 public definitions；JS 生成和 Vite 构建通过。新增确认按钮测试验证原事件和 dispatch 透传、confirm 后 close，以及非法容器/非 Tag 键拒绝且不调用业务回调。

现有质量预算未放宽：schemaDynamic 70、codeDynamic 0、codeNil 65、unresolved 135、deprecated 0。版本保持 0.10.49-alpha.3。完整下游 strict 验收仍取决于其他模块及 core 的独立证明问题。
