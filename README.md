## Respo alerts library in Calcit-js

> Respo alert/prompt/confirm/modal helpers for calcit-js.

### 0.14.4 候选

消费者需要统一 Calcit CLI 和 `@calcit/procs` 到 **0.42.0**，其余依赖与 0.14.3 相同。按 0.42.0 效果边界，`use-prompt`、`use-confirm` 和 prompt task 读写函数（`store-prompt-task!`、`take-prompt-task!`、`clear-prompt-task!`）的 `Fn` schema 声明 `:state`；调用它们的组件和处理函数也要声明 `:state`，否则 0.42 会给出 `W_STATE_FEATURE_REQUIRED` 提示（`calcit fix --rule effect-features-v1` 可一次补齐）。CI 的 Shelf 消费者夹具改用 0.42.0 检查。

### 0.14.3

消费者需要统一 Calcit CLI 和 `@calcit/procs` 到 **0.41.1**，并配对 UI **0.15.2**、Respo **0.19.5** 和 JS-FFI **0.2.13** 后重新生成 JS。Reel **0.11.0** 只由 Alerts Demo 使用，移入开发依赖。应用自行升级 Reel 到 0.11 时，需要给面板与快捷键传入 `Control` 回调。Alerts 的弹层接口和状态事件沿用原合同。自建状态 Map 的 `:cursor` 应遵循 Respo 的 `List CoordKey`（元素为 Tag、String 或 Number）；省略或传入 nil 时使用空路径，非法游标会在构建弹层时报告。Demo 将弹层事件解码为具名 `Op`，开发面板通过单独回调接收 `reel.typed/Control`，未知插件事件仍会记录警告。

### 0.14.0 候选：输入和分发回调

Prompt 的 `.show` 要求输入回调接收一个 String，结果仍会被丢弃。Alert、Drawer、Modal Menu 和 Prompt 的分发函数接收项目的 `dispatch-op` 类型并返回 Unit。参数类型无法推断时，请用 `hint-fn` 标注实际签名。Modal 的 `.show` / `.close` 与库内组件的 `d!` 回调同样写成 `*dispatch-op`。各弹层的状态更新和回调顺序沿用原行为。

### 历史 0.13.1：使用者影响

CLI / `@calcit/procs` 配对正式 **0.35.1**、Reel **0.9.2**、UI **0.15.1**、
Respo **0.19.4**、JS-FFI **0.2.13** / Router **0.12.1**。消费者须统一精确图并重新生成 JS。
相对 #128 main，Snapshot、原 hooks / 回调 / HUD、受检样式 union 与具体 action 合同保持。
旧样式的单属性 nil 仍请改用 `Option :none`；本 patch 不新增输入行为变化。
原 Shelf 夹具使用正式 Feather **0.6.2** 及同版宿主图，固定源码和原门禁保持；
它是隔离候选图验收，不代表 Shelf 自己的生产发布图或页面交互验收。
精确 PR / main CI 通过后再发布；原前端 COS 内置校验及 Demo rsync 路径保持。

### 历史 0.13.0 配对

CLI / `@calcit/procs` 配对正式 **0.35.0**、Reel **0.9.1**、UI **0.15.0**、
Respo **0.19.3**、JS-FFI **0.2.12** / Router **0.12.0**。消费者需统一精确图并重新生成 JS。
样式选项现在在读取时逐值受检为 UI 既有 `InlineStyleValue`：String、Number、Tag 或
`Option StyleValue`。整个样式选项缺省/nil 仍是空 Map；单属性 nil 请改为 `Option :none`。
Bool、集合、函数等非法 CSS 值会更早拒绝，因此按 minor 发布。公开 hooks、状态 key、
回调次序、Prompt Enter 防误触修复与 HUD 保持。

沿用原逐项循环和 Tag-key 错误检查，仅在原取值位置增加 union 解码；不另跑一遍
完整样式 Map 验证。返回值和循环累加器保留具体 union，减少三处显式 Dynamic。
七份已知 CSS 字面量补共同 union 上下文，保持原合并/覆盖顺序；用于规避已有的
[泛型参数顺序推断限制](https://github.com/calcit-lang/calcit/issues/2608)，没有回退 Dynamic。

复用原测试 runner，只补一个附带 unit 覆盖样式 scalar/some/none、缺省与非法 Bool。
原严格门禁、预算、消费者测试和部署路径保留；精确验收见本 PR。
Shelf 仍为固定旧源码夹具，正式 Feather 对齐 **0.6.1**。仅在隔离副本中用官方 formatter
规范化旧类型写法，随后检查/构建必须保持该规范源码不变；这不等于 Shelf 自己的
Caps 发布图或真实页面交互验收，不修改、合并或部署 Shelf。

### 历史 0.12.0 / 现代 Respo 事件图


使用者影响：配对正式 Calcit CLI / `@calcit/procs` **0.34.2**、Reel **0.9.0**、UI **0.14.1**、Respo **0.19.2**、JS-FFI **0.2.10** 与传递 Router **0.11.2**。消费者需协调完整精确图并重新生成 JS，不能与旧 Map DOM 事件图混装。0.12.0 尚未发布。

公开 hooks、`.show` 的 Option 参数、状态 key、样式和回调顺序保持。Confirm / Alert 的应用回调继续收到 Map；在一个具名的受检 DOM 入口将名义 RespoEvent 转为 Map，旧 Map 沿用原 Tag 键校验与字段语义，非法 Map 或其他 Struct 拒绝。这个入口保留真实 raw Dynamic，不用有限 union 假装开放事件字段已经封闭。公开 Prompt Map 辅助接口及原默认值行为保持，DOM handler 本身标注具体 RespoEvent。

Demo 和 typed Reel 原测试进入 managed memo frame，保证组件构建与实际渲染同处一个 frame。15 处旧 spacer 按原非 nil 宽度优先规则迁移为等宽/等高 space-x / space-y。八处已有 guard / 返回类型证明的强转移除，unsafe 8→0；全部 98 个原定义的 schema、附带测试和示例保持。

修复实际页面验收发现的 [#125](https://github.com/Respo/alerts.calcit/issues/125)：Prompt 用 Enter 提交并由回调打开 Confirm 时，先阻止原生默认行为，避免同一次 Enter 自动点击新 Confirm。多行普通 Enter 仍换行，Escape 和回调次序保持。复用原键盘回归使用真实 RespoEvent 夹具；新增断言在修复前失败、修复后通过，不增加 checker 或编译器规则。

本地 293 个可达定义、完整 strict、原 19 项 unit、原 28 项 Node（含附带 native/JS 回放）、构建通过，dynamic-method/deprecated 为零，门禁未放宽。原 Shelf 精确源码夹具在同一候选图下通过 277 个定义、完整 strict、构建与原七项回归，Snapshot 字节保持；这是显式本地候选图，不冒称已发布 Alerts 的 Caps 安装验收。实际 Chrome 已验收 Confirm、Alert、单/多行 Prompt、空输入与非法 Cirru 校验、Modal/Menu/Drawer、Escape 及刷新；修复后捕获到 Enter defaultPrevented=true，Confirm 等待独立点击，控制台无错误。精确 Linux CI、隔离 COS 内置校验与评审仍待完成。

### 历史 0.11.3 / Calcit 0.34.2 维护记录

使用者影响：CLI 与 `@calcit/procs` 同步到正式 **0.34.2**，配对 Reel **0.8.1**、UI **0.12.1**、Respo **0.18.1**、JS-FFI **0.2.9**（传递 Router **0.10.1**）。保留 Map 事件与已有 Router struct，不能与 Respo 0.19 新事件图混装；公开 hooks、回调顺序、nil/Option 样式行为与三项样式常量 union 合同保持。

Snapshot、schema、原测试和断言与 0.11.2 逐字节相同。仅同步正式图、procs/锁文件和说明；原 Shelf 精确源码夹具只在本地候选图中配对 procs 0.34.2，源码不改，不冒充 Shelf 自身正式发布图验收。本地全部 287 定义、完整 strict、原 19 项 unit、28 项 Node 渲染回归、构建及 Shelf 原门禁/回归通过。UI 0.12.1 / Router 0.10.1 已正式发布，随后已通过 Caps strict 真实图及 toolchain 验收，安装 Snapshot 与预检源码逐字节相同；远端完整 CI 与评审仍需完成，当前不宣称已发版。

### 历史 0.11.2

使用者请将 CLI 和 `@calcit/procs` 同步到正式 **0.34.1**，并配对 Reel **0.8.0**、UI **0.12.0**、Respo **0.18.0**、JS FFI **0.2.9**，再生成 JS。直接使用 UI 的 Store 或 Router 的调用方还需适配其具名 Router 类型。

`backdrop`、`card` 和 `button` 三个公开样式常量使用 UI 提供的 `Map<Tag,StyleValue>`，值可以是 String、Number 或 Tag。Demo 的 Inspector 和 Reel 使用显式 Option 控制显示。CI 在同一份 Shelf 源码上运行候选依赖图及其原回归。

### 历史 0.11.1

使用者影响：继续配对正式 Calcit CLI / `@calcit/procs` **0.32.1**，依赖图升级为
Respo **0.18.0**、UI **0.10.0**、Reel **0.7.1**、JS-FFI **0.2.9**（传递 Router **0.9.0**）。
应用须协调同一精确图并重新生成 JS；直接构造 DomProps 的应用也需按上游 Option 字段迁移。
Alerts 的公开 hook、`.show` Option 参数、状态/cursor 和回调顺序保持。
0.11.0 已发布且不移动；0.11.1 仍为候选，正式依赖图验收及发版以实际 tag 和 PR 为准，不引用 main/hash。

Prompt 的 DomProps 只写实际使用的字段，有值字段用 Option :some，缺省字段省略。
事件函数补上受编译器检查的 EventHandler 合同；input/textarea 分支的 class/style 同样保留 Option。
公开 `prompt-placeholder` 的 JsNullish 返回合同不变，在 DOM 字段前显式转为 Option，
保留缺省、空字符串、Unicode 和非法输入拒绝行为；不新增强转、默认回退或编译器特判。

保留全部原门禁和断言：完整 strict、native/生成 JS 回放、Prompt/typed Reel 渲染及固定 Shelf 源码夹具。
夹具的宿主版本声明与本候选同步，但它仍是本地候选源码图，不能冒称 Alerts 0.11.1 的已发布安装验收。
不新增 runner、预算或重复 COS 校验脚本；npm 新候选一小时包龄及原前端部署路径保持。

### 历史：0.11.0 正式配对

0.11.0 已发布到 488d67c，使用 Reel 0.7.0、UI 0.9.0、Respo 0.17.1 和 JS-FFI 0.2.9；
UI 保留自身 Router 预发布传递依赖。相对 alpha.5 只同步发布图，原源码和公开合同不变。
以下 `.show` 的 Option 参数迁移要求仍适用。

### 0.11.0-alpha.5：`use-alert` 的 `.show` 改收 Option

`use-alert` 插件 `.show` 的第三个参数从旧的 `Optional String`（可传 nil）改为
`Option String`，为 Calcit 0.33 删除 `Optional<T>`（calcit-lang/calcit#2233）做准备。
调用方需要把 `.show plugin d! nil` 改成 `.show plugin d! $ Option :none`，把
`.show plugin d! "|text"` 改成 `.show plugin d! $ Option :some "|text"`；不改的调用会在类型检查阶段报错。
`respo-alerts.util/merge-optional-styles` 内部改用 Option 选择样式，返回值与行为不变。
另外 10 个 `defstyle` 的 schema 从 Dynamic 收紧为 String。

工具链与依赖图与 alpha.4 相同：Calcit / `@calcit/procs` **0.32.1**，Reel `0.7.0-alpha.5`、
UI `0.9.0`、Respo `0.17.1`、JS-FFI `0.2.9`。

### 历史：0.11.0-alpha.4 候选

CLI 与 `@calcit/procs` 升到正式 **0.32.1**；本轮候选对齐 Reel / UI
`0.7.0-alpha.5` / `0.9.0`、Respo `0.17.1` 与 JS-FFI `0.2.9`。Snapshot 已用
`calcit edit format` 迁移为 0.32 类型写法。
模块仍是 alpha 候选，尚未发布；消费者需协调完整图并重新生成 JS，不混装旧图或
用 main/hash 代替 tag。旧 0.30.1 / 0.31 消费者继续使用原维护线。

本次除类型迁移外不改公开 API、原测试或断言。沿用已发布 alpha.2 的 Modal 修复：
`.show` / `.close` 保留 dispatcher 的泛型返回关系，仍各调用一次并直接返回其结果；
`.render` 返回 Component。状态操作、cursor、异常、HUD、Demo callback 和部署路径保持。

原完整 strict、unit、附带测试 native/JS 重放、渲染回归及 Shelf 消费者门禁保留，
不增加 runner 或类型预算。Shelf 固定原已评审的源码夹具，runtime 配对正式 0.32.1，
并使用 Feather `0.5.0-alpha.6` 与当前本地候选图；Shelf 固定到已迁移 0.32 类型写法的评审提交，执行
immutable、类型、构建与原回归。库根继续执行 Caps strict/toolchain 校验。
本地候选图不等于尚未发布 Alerts tag 的干净消费者安装。

Demo http://repo.respo-mvc.org/alerts.calcit/ .

历史（0.31 候选，非当前 0.32.1 配对）：旧 JS-FFI 0.2.6 tag 实际声明 0.30.1；本轮采用新 0.2.7，并沿 Respo/Router/UI/Reel 对齐正式 0.31 声明，见 [发布配对问题](https://github.com/calcit-lang/js-ffi/issues/195)。Respo/Router/UI/Reel 新 tag 均已通过各自原 CI 与 Demo 流程并发布；JS-FFI 0.2.7 通过原 CI 后发布，不涉及 Demo/服务部署。本候选将以这些实际 tag 验收，不改写旧 tag。Shelf 中 Feather 仍是固定已发布源码配合本地候选宿主图的兼容验收，不能据此宣称 Feather 自身发布依赖图已经同步。

### 历史：0.10.57 候选与正式 Calcit 0.30.1 配对

使用者影响：CLI/runtime 切到已配对发布的正式 **0.30.1**，模块依赖固定正式
Reel0.6.41、UI0.8.0、Respo0.16.124、JS-FFI0.2.5。消费者应协调整张依赖图、
重新生成 JS 并刷新，不混用旧 alpha 缓存；候选正式 tag 发布前不要用 main/hash 替代。
本次不改0.10.56的Snapshot、Confirm回调合同、状态cursor、组件样式或存档行为。

CI 以 all-defs 覆盖全部10个本地namespace，替代重复的9项手写清单；保留完整strict、
原附带测试的native/生成JS回放、Node渲染与typed Reel回归、弃用检查及COS action内置校验。
不新增验证脚本、预算或兼容包装；公开回调/宿主边界不宣称清零，真实消费者仍需单独验收。

### 历史：Confirm 回调合同收紧（0.10.56）

使用者影响：Confirm 的 `dispatch!` 必须接收**一个 Enum 操作**并返回 Unit，
确认后的 `next-task` 必须是**零参数**并返回 Unit。旧 `(cursor data)` 回调现在会在检查阶段报错，
请直接传入现有 Respo dispatcher；不再等用户点击删除时才抛出参数数量错误。
`.show`、`.show-with-text` 和 `.close` 保留原状态操作、cursor、文本与任务清理行为；
`.render` 明确返回 Component，`.show?` 返回 Bool。不引入兼容包装、强转或编译器规则。

CLI/runtime 仍固定已发布的 **0.30.1-alpha.4（预发布）**；依赖保持正式 Reel 0.6.39、
UI 0.7.41、Respo 0.16.122 和 JS-FFI 0.2.3，不把模块正式 patch 当作语言稳定版。
新增一个定义内 Confirm 正向回归，复用现有原生/生成 JS 回放；在同一临时 fixture 中检查旧回调被拒绝，
不增加独立脚本或放宽预算。完整验收、CI 和消费者结果以对应 PR 为准。
关联 [#102](https://github.com/Respo/alerts.calcit/issues/102)。

### 历史：0.10.54 正式依赖图对齐

使用者影响：CLI/runtime 继续固定正式 0.30.0，依赖升级到已发布的 Reel 0.6.38、
UI 0.7.40（传递 Router 0.8.35）；Respo 0.16.120、JS-FFI 0.2.3 不变。
消费者其他模块也需协调同一精确版本，不能只改根依赖或放宽 Caps strict。
本 patch 不修改 Snapshot、hook/插件 API、Tag/cursor 派发协议、样式、业务回调或原测试；
不合入另一个 typed-dispatch PR，不新增兼容层、验证脚本或预算豁免。

固定旧 0.10.53 图与新候选图分别通过完整 strict/preflight、原 22 项附带测试和
原 24 项 Node 渲染回归（包含原断言的 native/生成 JS 回放）。候选 all-defs 280/280、
九个公开 namespace 95/95、生产构建通过。仍有开放业务 payload/FFI 边界，不宣称全部类型闭合。
本地只读模块链接不代替 PR CI 的 fresh Caps 严格安装和工具链验收；正式发版前以其结果为准。
COS 仅使用 Action 内置 verify，原 demo 与服务器路径保持不变。

0.30.1-alpha.4 只读探测：正式 Respo 0.16.120 图 public 64/95，42 条含级联诊断；
仅临时加载 Respo #269 的精确合并源码后 public 95/95、原 22 项测试通过，
随后恢复正式链接。跟踪上游 #270，不将未发布 main 当作正式依赖，
也不冒称完整 alpha strict/配对 JS 或消费者应用验收。

### Hooks usages

```cirru.no-run
ns app.main
  :require
    respo-alerts.core :refer $ use-alert use-prompt use-confirm use-modal use-modal-menu use-drawer
```

> Snippets below are API-focused fragments. They are written as self-contained `cirru`/`cirru.no-run` snippets for stricter markdown validation.

#### `use-alert`

```cirru
{}
  :text "|message text"
  :style $ {}
  :card-style $ {}
  :backdrop-style $ {}
  :card-class "|style-card"
  :backdrop-class "|style-backdrop"
  :confirm-class "|style-confirm"
```

```cirru.no-run
ns app.main
  :require
    respo-alerts.core :refer $ use-alert
    respo.core :refer $ >>

let
    states $ {} (:cursor $ [])
    alert-plugin $ use-alert (>> states :alert) ({} (:text "|demo"))
    on-click $ fn (e dispatch!)
      .show alert-plugin dispatch! $ Option :none
```

the third argument is an `Option String`; pass `Option :some text` to overwrite the `:text` field, or `Option :none` to keep it:

```cirru.no-run
ns app.main
  :require
    respo-alerts.core :refer $ use-alert
    respo.core :refer $ >>

let
    states $ {} (:cursor $ [])
    alert-plugin $ use-alert (>> states :alert) ({} (:text "|demo"))
    on-click $ fn (e dispatch!)
      .show alert-plugin dispatch! $ Option :some "|Extra text"
```

#### `use-confirm`

```cirru
{}
  :text "|message text"
  :style $ {}
  :card-style $ {}
  :backdrop-style $ {}
  :card-class "|style-card"
  :backdrop-class "|style-backdrop"
  :confirm-class "|style-confirm"
```

```cirru.no-run
ns app.main
  :require
    respo-alerts.core :refer $ use-confirm
    respo.core :refer $ >>

let
    states $ {} (:cursor $ [])
    confirm-plugin $ use-confirm (>> states :confirm) ({} (:text "|demo"))
    on-click $ fn (e dispatch!)
      .show confirm-plugin dispatch! $ fn ()
        println "|after confirmed"

  .render confirm-plugin
```

#### `use-prompt`

```cirru
{}
  :text "|message text"
  :style $ {}
  :input-style $ {}
  :card-style $ {}
  :backdrop-style $ {}
  :card-class "|style-card"
  :backdrop-class "|style-backdrop"
  :confirm-class "|style-confirm"
  :multiline? false
  :initial "|default text"
  :placeholder "|input"
  :button-text "|Submit"
  :validator $ fn (x)
    if (blank? x) "|Blank failed" nil
```

```cirru.no-check
ns app.main
  :require
    respo-alerts.core :refer $ use-prompt
    respo.core :refer $ >>

let
    states $ {} (:cursor $ [])
    prompt-plugin $ use-prompt (>> states :prompt) ({} (:text "|demo"))
    on-click $ fn (e dispatch!)
      .show prompt-plugin dispatch! $ fn (text)
        hint-fn $ Fn String $ -> Unit
        println "|read from prompt" (pr-str text)

  .render prompt-plugin
```

#### `use-modal`

```cirru.no-run
ns app.main
  :require
    respo-alerts.core :refer $ use-modal
    respo.core :refer $ >>

let
    states $ {} (:cursor $ [])
    demo-modal $ use-modal (>> states :modal) $ {}
      :title "|demo"
      :style $ {} (:width 400)
      :container-style $ {}
      :backdrop-style $ {}
      :card-class "|style-card"
      :backdrop-class "|style-backdrop"
      :confirm-class "|style-confirm"
      :render $ fn (on-close)
        , nil
    on-click $ fn (e dispatch!)
      .show demo-modal dispatch!
  .render demo-modal
```

#### `use-modal-menu`

```cirru.no-run
ns app.main
  :require
    respo-alerts.core :refer $ use-modal-menu
    respo.core :refer $ >>

let
    states $ {} (:cursor $ [])
    demo-modal-menu $ use-modal-menu (>> states :modal-menu) $ {}
      :title "|Demo"
      :style $ {} (:width 300)
      :backdrop-style $ {}
      :card-class "|style-card"
      :backdrop-class "|style-backdrop"
      :confirm-class "|style-confirm"
      :items $ []
        :: :item |a |A
        :: :item |b |B
      :on-result $ fn (result dispatch!)
        println "|got result" result
    on-click $ fn (e dispatch!)
      .show demo-modal-menu dispatch!
  .render demo-modal-menu
```

#### `use-drawer`

```cirru.no-run
ns app.main
  :require
    respo-alerts.core :refer $ use-drawer
    respo.core :refer $ >>

let
    states $ {} (:cursor $ [])
    demo-drawer $ use-drawer (>> states :drawer) $ {}
      :title "|demo"
      :style $ {} (:width 400)
      :container-style $ {}
      :backdrop-style $ {}
      :card-class "|style-card"
      :backdrop-class "|style-backdrop"
      :confirm-class "|style-confirm"
      :render $ fn (on-close)
        , nil
    on-click $ fn (e dispatch!)
      .show demo-drawer dispatch!
  .render demo-drawer
```

> No hooks API for `comp-select` yet.

### 实际组合方式

与真实 demo 相同，先用 `>> states :key` 创建插件，再由 `on-click` 触发，最后渲染插件节点。
下面是可独立检查的局部示例；复用组件的定义和 schema 以项目 Snapshot 中的 demo 为准。

```cirru.no-run
ns app.main
  :require
    respo-alerts.core :refer $ use-alert use-confirm use-prompt
    respo.core :refer $ >> div button

let
    states $ {} (:cursor $ [])
  let
      alert-plugin $ use-alert (>> states :alert) ({} (:text "|demo"))
      confirm-plugin $ use-confirm (>> states :confirm) ({} (:text "|confirm?"))
      prompt-plugin $ use-prompt (>> states :prompt) ({} (:text "|input text"))
    div ({})
      button
        {} (:inner-text "|show alert")
          :on-click $ fn (e dispatch!)
            .show alert-plugin dispatch! $ Option :none
      button
        {} (:inner-text "|show confirm")
          :on-click $ fn (e dispatch!)
            .show confirm-plugin dispatch! $ fn ()
              println "|after confirmed"
      button
        {} (:inner-text "|show prompt")
          :on-click $ fn (e dispatch!)
            .show prompt-plugin dispatch! $ fn (text)
              hint-fn $ Fn String $ -> Unit
              println text
      .render alert-plugin
      .render confirm-plugin
      .render prompt-plugin
```

### Components

`comp-modal` for rendering modal without child:

```cirru.no-run
ns app.main
  :require
    respo-alerts.core :refer $ comp-modal

let
    show? true
    on-close $ fn (dispatch!)
      , dispatch!
  comp-modal
    {}
      :title "|Demo"
      :style $ {} (:width 400)
      :container-style $ {}
      :backdrop-style $ {}
      :card-class "|style-card"
      :backdrop-class "|style-backdrop"
      :confirm-class "|style-confirm"
      :render $ fn (on-close)
        , on-close
    , show? on-close
```

```cirru.no-check
ns app.main
  :require
    respo-alerts.core :refer $ comp-modal-menu

let
    state $ {} (:show-modal-menu? true)
    cursor nil
  comp-modal-menu (:show-modal-menu? state)
    {} (:title "|Demo")
      :style $ {} (:width 300)
      :backdrop-style $ {}
      :card-class "|style-card"
      :backdrop-class "|style-backdrop"
      :confirm-class "|style-confirm"
    []
      :: :item |a |A
      :: :item |b |B
    fn (dispatch!)
      dispatch! cursor (assoc state :show-modal-menu? false)
    fn (result dispatch!)
      println "|result" result
      dispatch! cursor (assoc state :show-modal-menu? false)
```

### Workflow

https://github.com/calcit-lang/respo-calcit-workflow

当前 0.31 维护线配对已发布的正式 Calcit/procs `0.31.0` 和 Node.js 24。
模块元数据为候选 `0.11.0-alpha.3`，尚未发布；消费者不要以 main/hash 代替发布依赖，
旧工具链消费者需同步升级整张依赖图，不混装工具链。上文正式 `0.30.1` / `0.10.57` 图为历史维护线。
生成的前端产物上传后，
由 COS action 的内置功能验证公开可访问性；生产路径是
`https://cos-sh.tiye.me/Respo/alerts.calcit/`，PR 使用独立的
`/pr/<number>/<run>/<attempt>/` 路径。
现有 `dist/*` 到 `rsync-user@tiye.me:/web-assets/repo/Respo/alerts.calcit` 的
生产同步保持不变；COS 仅接收前端构建产物，不上传源代码或服务器文件。

生产任务排队、不取消，并在 COS/rsync 前跳过过时 main revision；发布不是原子操作。
Actions 引用使用正式版本 tag，但 tag 可变，不应称为不可变供应链 pin。
插件定义仍声明 `EnumDef`，hook 返回具体名义插件类型；普通 `.show`、`.show?`、
`.render` 调用继续由编译器完成方法 lowering，不改为应用侧 native call。

### License

MIT

### 0.10.48 插件原型修复

此 patch 将 #84 已合并的插件原型 `EnumDef` 声明修复纳入正式模块版本，
供下游固定 tag 引用；仅更新模块版本，不新增迁移规则、验证脚本或 alpha 依赖。
正式 `0.10.48` tag/release 已发布，包含该修复。
该正式版本使用原 Calcit 0.27.0 工具链；不能据此宣称共享依赖的整体迁移已完成。

### Prompt 的 placeholder 边界

`:placeholder` 允许 String 或缺失值：缺失时不生成该 DOM 属性，空字符串保留为空字符串。
从开放 options 读取后，通过 `prompt-placeholder` 检查，保留其公开
`JsNullish<String>` 返回合同，再通过 `js-nullish->option` 进入 `DomProps` 的 Option 字段。Number、Bool、Tag、Map、List 会明确失败，不做隐式字符串转换。
`input` 与 `textarea` 共用此边界；不改变初始文字、提交、关闭、validator 或样式定制。

历史 `0.10.55` / `0.10.56` 图固定 Calcit/procs `0.30.1-alpha.4`、Respo `0.16.122`、
JS-FFI `0.2.3`、Reel `0.6.39`、UI `0.7.41`，
传递 Router 为 `0.8.36`。Prompt 通过具名 `DomProps` 构造并显式提供当前字段，
保持事件回调、初始文字、提交和关闭行为；Escape 事件使用 JS-FFI 的类型化浏览器适配器。

### 样式和菜单输入边界

触发器的 `:trigger-style` / `:trigger-active-style` 与菜单的 `:style` 只接受 Map 或缺失值。
`merge-optional-styles` 先验证容器再合并，保留两侧缺失时的 nil、单侧样式、空 Map 和右侧覆盖。
非 Map 输入明确失败，不隐式转成 Map；CSS 字段和值的验证仍由 Respo 负责。

菜单的必填 `:items` 由 `menu-items` 验证为 List，不把缺失或错误容器替换成空列表。
内部仍支持原有 `:: :item value display` 和 `{:value value :display display}`，
保留异构 value、组件 display、选择 callback 与 Clear 的 nil；这里没有猜测业务 payload 类型。

### 验证

```bash
caps --strict --ci
yarn install --immutable
caps verify --toolchain
calcit --check-only --all-defs
calcit test --tag unit --require-match
calcit js
node --test scripts/prompt-render.test.mjs scripts/typed-reel-render.test.mjs
yarn vite build
```

已有渲染 runner 还会从 Snapshot 提取全部 `:tests` 的原始 AST，在项目内临时 Snapshot 上
以 native 和生成 JS 回放同一份断言；不会维护一套不同的 JS 单元断言。
JS 回放使用独立进程隔离 trait registry，临时入口显式设置 native mode，不重写正常 `js-out`。
原有初始文字重开、提交、Reel 渲染断言保留，新增 placeholder、菜单选择和 trigger 样式回归。
CI 用当前严格检查覆盖全部公开命名空间，并阻断废弃调用；弱类型报告按需运行，
不保留重复数字预算。历史 0.10.54 使用稳定 0.30.0，0.10.55 / 0.10.56 使用上述 alpha 图，
0.10.57 候选使用正式 0.30.1 图；当前 0.31 维护线以 Workflow 中的正式 0.31.0 配对为准。
保留 prompt/menu/plugin 的既有行为，不宣称开放业务 payload 已全面静态化。
本仓库 npm 新包安装隔离期按既有授权统一为一小时，不设置逐版本豁免。
Prompt 回调和 demo Reel 的命名空间状态使用首选 `defref` 写法，保留初始化与热重载语义。
旧迁移预算在正式图与源码验收通过后退役，不再保留重复预算脚本。
具名 Reel 的 store 使用直接字段访问；demo 的三个 state 分支由
`decode-map-as` 检查为原有 `Map<Tag, Dynamic>` 合同，不用新增 cast 或放宽参数类型。

### 状态派发与升级边界

0.10.55 还包含此前已合入 main、未随 0.10.54 发布的状态派发调整：
组件直接发送 `:: :states cursor state` 操作，应用 Op 需要保留 `:states`
变体及原 cursor/state payload。当前正式 Respo 仍支持旧派发入口；本次不删除它们，
也不要求应用采用尚未发布的 slot/泛型路线。Prompt 提交、关闭、重开和菜单回调
继续由原测试验证；本次配对不改这些程序或断言。

### 上一轮 0.10.53 升级的历史证据与限制

本候选把公共 `read-field` 的 Map/Struct 读取迁移到 `get` + Option 解包，
缺失键仍返回 nil，false、0、空字符串和原值身份不变。菜单 Map 项、prompt
事件及 trigger demo 复用这个既有 helper；项目代码不再调用旧 `&map:get`。
不改原 Tag/cursor-list 派发协议，不修改 schema、trait 或原测试断言。
demo 在 validator、可见状态、cursor、hydrate 和开放操作的实际入口检查其合同；
错误容器明确拒绝，不伪造默认状态或把断言当成解码。

正式 0.30.0 下原 22 项附带测试和原 24 项 Node 渲染测试（其中包含原附带断言的
native/生成 JS 回放）通过。根依赖已更新为新正式发布的 Reel 0.6.37，
CI 直接执行完整 strict；不能把普通检查或隔离候选证据替代干净 CI 验收。
0.10.53 的 review、精确 main CI 与正式发布已完成；不能以这些历史结果代替 0.10.54 的验收。
隔离 Docs Workflow 使用本候选、Respo #269 和 Reel #72，配对已发布的
0.30.1-alpha.4 CLI/runtime 后完整 strict 通过；业务项目正式 pin 未改为 alpha。
真实隔离 localhost 页面完成 Unicode prompt 提交、关闭和重新打开、菜单 B 选择，
未见 console error；原 mode 配置 warning 保留。此页面运行的是正式 0.30.0/Reel 0.6.36 图，
不冒称 alpha.4 浏览器或任意业务应用部署验收。临时页面和 Vite 已关闭。

- 当前候选使用已发布 alpha 工具链与正式模块 tag；仍须完成本轮 PR 最新 HEAD 的 CI/review 和合并后 main 验证后才发布 0.10.55。
- 现有 hooks 的开放 options/callback 与菜单业务 payload 并未全面类型化；
  不能把容器验证或当前 demo 成功当作任意下游应用的静态类型保证。
- 模块发布后还需验证真实 tag 消费者；Diary 的整体迁移仍是独立验收，不由此 PR 自动完成。
