## Respo alerts library in Calcit-js

> Respo web page based on calcit-js.

Demo http://repo.respo-mvc.org/alerts.calcit/ .

### Hooks usages

```cirru
respo-alerts.core :refer $ use-alert use-prompt use-confirm
```

#### `use-alert`

```cirru
{}
  :text "|message text"
  :style $ {}
  :card-style $ {}
  :backdrop-style $ {}
  :card-class style-card
  :backdrop-class style-backdrop
  :confirm-class style-confirm
```

```cirru
let
    alert-plugin $ use-alert (>> states :alert) ({} (:text "|demo"))
  button $ {}
    :on-click $ fn (e d!)
      .show alert-plugin d!
```

extra argument can be added to overwrite `:text` field:

```cirru
.show alert-plugin d! "|Extra text"
```

#### `use-confirm`

```cirru
{}
  :text "|message text"
  :style $ {}
  :card-style $ {}
  :backdrop-style $ {}
  :card-class style-card
  :backdrop-class style-backdrop
  :confirm-class style-confirm
```

```cirru
let
    confirm-plugin $ use-confirm (>> states :alert) ({} (:text "|demo"))
  button
    {}
      :on-click $ fn (e d!)
        ; "open UI"
        .show confirm-plugin d! $ fn ()
          println "|after confirmed"

  ; "render UI"
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
  :card-class style-card
  :backdrop-class style-backdrop
  :confirm-class style-confirm
  :multiline? false
  :initial "|default text"
  :placeholder "|input"
  :button-text "|Submit"
  :validator $ fn (x)
    if (blank? x) "|Blank failed" nil
```

```cirru
let
    prompt-plugin $ use-prompt (>> states :prompt) ({} (:text "|demo"))
  button $ {}
    :on-click $ fn (e d!)
      .show prompt-plugin d! $ fn (text)
        println "|read from prompt" (pr-str text)

  ; "render UI"
  .render prompt-plugin
```

#### `use-modal`

```cirru
let
    demo-modal $ use-modal (>> states :modal) $ {}
      :title "|demo"
      :style $ {} (:width 400)
      :container-style $ {}
      :backdrop-style $ {}
      :card-class style-card
      :backdrop-class style-backdrop
      :confirm-class style-confirm
      :render $ fn (on-close)
        div ({})
          <> "|Place for child content"

  ; "event handler to open menu"
  .show demo-modal d!

  ; "render UI"
  .render demo-modal
```

#### `use-modal-menu`

```cirru
let
    demo-modal-menu $ use-modal-menu (>> states :modal-menu) $ {}
      :title "|Demo"
      :style $ {} (:width 300)
      :backdrop-style $ {}
      :card-class style-card
      :backdrop-class style-backdrop
      :confirm-class style-confirm
      :items $ []
        :: :item |a |A
        :: :item |b $ div ({}) (<> "|B")
      :on-result $ fn (result d!)
        println "|got result" result

  ; "event handler to open menu"
  .show demo-modal-menu d!

  ; "render UI"
  .render demo-modal-menu
```

#### `use-drawer`

```cirru
let
    demo-drawer $ use-drawer (>> states :drawer) $ {}
      :title "|demo"
      :style $ {} (:width 400)
      :container-style $ {}
      :backdrop-style $ {}
      :card-class style-card
      :backdrop-class style-backdrop
      :confirm-class style-confirm
      :render $ fn (on-close)
        div ({})
          <> "|Place for child content"

  ; "event handler to open menu"
  .show demo-drawer d!

  ; "render UI"
  .render demo-drawer
```

> No hooks API for `comp-select` yet.

### Components

`comp-modal` for rendering modal without child:

```cirru
let
    on-close $ fn (d!)
      d! cursor (assoc state :show? false)
  comp-modal
    {}
      :title "|Demo"
      :style $ {} (:width 400)
      :container-style $ {}
      :backdrop-style $ {}
      :card-class style-card
      :backdrop-class style-backdrop
      :confirm-class style-confirm
      :render $ fn (on-close)
        div ({})
          <> "|Place for child content"
    , show? on-close
```

```cirru
comp-modal-menu (:show-modal-menu? state)
  {} (:title "|Demo")
    :style $ {} (:width 300)
    :backdrop-style $ {}
    :card-class style-card
    :backdrop-class style-backdrop
    :confirm-class style-confirm
  []
    :: :item |a |A
    :: :item |b $ div ({}) (<> "|B")
  fn (d!)
    d! cursor (assoc state :show-modal-menu? false)
  fn (result d!)
    println "|result" result
    d! cursor (assoc state :show-modal-menu? false)
```

### Workflow

https://github.com/calcit-lang/respo-calcit-workflow

### License

MIT
