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
      .show alert-plugin dispatch!
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

### Practical component pattern

From real demo usage in `calcit.cirru`, a common pattern is: create plugins with `>> states :key`, trigger them in `on-click`, then render plugin nodes at the end.

```cirru.no-run
ns app.main
  :require
    respo-alerts.core :refer $ use-alert use-confirm use-prompt
    respo.core :refer $ defcomp >> div button

defcomp comp-hooks-demo (states)
  let
      alert-plugin $ use-alert (>> states :alert) ({} (:text "|demo"))
      confirm-plugin $ use-confirm (>> states :confirm) ({} (:text "|confirm?"))
      prompt-plugin $ use-prompt (>> states :prompt) ({} (:text "|input text"))
    div ({})
      button
        {} (:inner-text "|show alert")
          :on-click $ fn (e dispatch!)
            .show alert-plugin dispatch!
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

The demo's upgrade candidate uses Calcit 0.29.0-alpha.6 and Node.js 24. Its generated frontend assets
are uploaded and publicly verified at `https://cos-sh.tiye.me/Respo/alerts.calcit/`
for production and `/pr/<number>/<run>/<attempt>/` for pull requests. The existing production rsync of
`dist/*` to `rsync-user@tiye.me:/web-assets/repo/Respo/alerts.calcit` remains
unchanged; COS only receives frontend build output.

COS action 1.2 uses its built-in public verification; no additional upload checker
is needed. Production jobs queue without cancellation and skip obsolete main
revisions before COS and rsync; publication is not atomic. Action references use
formal version tags, which remain mutable and are not immutable supply-chain pins.

Plugin definitions and trait-bearing constructors declare `EnumDef`; hook return
schemas still describe nominal plugin instances. This corrects the constructor
metadata rejected by Calcit 0.28 without changing payloads or runtime behavior.
完整升级尚未完成，以下限制列出当前剩余门禁。

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

升级候选使用已发布 Calcit / procs `0.29.0-alpha.6`、Respo `0.16.114-alpha.7`、
JS-FFI `0.2.1-alpha.13`。Prompt 通过具名 `DomProps` 构造并显式提供当前字段，
保持事件回调、初始文字、提交和关闭行为。

### 升级候选的限制

- 完整 demo 严格入口仍有 trigger 样式 merge 与 menu items 的未验证容器警告。
- 原 `caps --strict --ci` 被 Reel/UI/router 的旧发布依赖 pin 冲突阻塞，门禁未放宽。
- 候选尚未发布；完整模块、消费者与 PR CI/review 都通过后才可交付。
