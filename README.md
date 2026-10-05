## Respo alerts library in Calcit-js

> Respo alert/prompt/confirm/modal helpers for calcit-js.

Demo http://repo.respo-mvc.org/alerts.calcit/ .

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

升级候选使用 Calcit `0.29.0-alpha.6` 和 Node.js 24。生成的前端产物上传后，
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

升级候选固定已发布 Calcit / procs `0.29.0-alpha.6`、Respo `0.16.114-alpha.7`、
JS-FFI `0.2.1-alpha.13`、Reel `0.6.33-alpha.3`、UI `0.7.32-alpha.4`，
传递 Router 为 `0.8.28-alpha.5`。Prompt 通过具名 `DomProps` 构造并显式提供当前字段，
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
calcit --check-only
calcit test --tag unit --require-match
calcit js
node --test scripts/prompt-render.test.mjs scripts/typed-reel-render.test.mjs
yarn vite build
```

已有渲染 runner 还会从 Snapshot 提取全部 `:tests` 的原始 AST，在项目内临时 Snapshot 上
以 native 和生成 JS 回放同一份断言；不会维护一套不同的 JS 单元断言。
JS 回放使用独立进程隔离 trait registry，临时入口显式设置 native mode，不重写正常 `js-out`。
原有初始文字重开、提交、Reel 渲染断言保留，新增 placeholder、菜单选择和 trigger 样式回归。
既有 CI 的公开定义检查、废弃 API 检查和迁移 baseline 保持不变。

### 升级候选的限制

- alpha 模块是整体工具链升级的候选，不等同于稳定交付；发布必须先完成 PR 最新 HEAD 的 CI/review 和合并后 main 验证。
- 现有 hooks 的开放 options/callback 与菜单业务 payload 并未全面类型化；
  不能把容器验证或当前 demo 成功当作任意下游应用的静态类型保证。
- 模块发布后还需验证真实 tag 消费者；Diary 的整体迁移仍是独立验收，不由此 PR 自动完成。
