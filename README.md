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

### License

MIT
