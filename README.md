## Respo alerts library in Calcit-js

> Respo alert/prompt/confirm/modal helpers for calcit-js.

### 0.11.0-alpha.4 候选：使用者先注意

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

旧 JS-FFI 0.2.6 tag 实际声明 0.30.1；本轮采用新 0.2.7，并沿 Respo/Router/UI/Reel 对齐正式 0.31 声明，见 [发布配对问题](https://github.com/calcit-lang/js-ffi/issues/195)。Respo/Router/UI/Reel 新 tag 均已通过各自原 CI 与 Demo 流程并发布；JS-FFI 0.2.7 通过原 CI 后发布，不涉及 Demo/服务部署。本候选将以这些实际 tag 验收，不改写旧 tag。Shelf 中 Feather 仍是固定已发布源码配合本地候选宿主图的兼容验收，不能据此宣称 Feather 自身发布依赖图已经同步。

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
      .show alert-plugin dispatch! nil
```

extra argument can be added to overwrite `:text` field:

```cirru.no-run
ns app.main
  :require
    respo-alerts.core :refer $ use-alert
    respo.core :refer $ >>

let
    states $ {} (:cursor $ [])
    alert-plugin $ use-alert (>> states :alert) ({} (:text "|demo"))
    on-click $ fn (e dispatch!)
      .show alert-plugin dispatch! "|Extra text"
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
            .show alert-plugin dispatch! nil
      button
        {} (:inner-text "|show confirm")
          :on-click $ fn (e dispatch!)
            .show confirm-plugin dispatch! $ fn ()
              println "|after confirmed"
      button
        {} (:inner-text "|show prompt")
          :on-click $ fn (e dispatch!)
            .show prompt-plugin dispatch! $ fn (text)
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
从开放 options 读取后，通过 `prompt-placeholder` 检查，再进入 `DomProps` 的
`JsNullish<String>` 字段。Number、Bool、Tag、Map、List 会明确失败，不做隐式字符串转换。
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
