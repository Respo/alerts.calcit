
Respo alerts library in Calcit-js
----

> Respo web page based on calcit-js.

Demo http://repo.respo-mvc.org/alerts.calcit/ .

### Hooks usages

```cirru
respo-alerts.core :refer $ use-alert use-prompt use-confirm
```

#### `use-alert`

```cirru
{}
  :text "|message text",
  :style $ {}
  :card-style $ {}
```

```cirru
let
    alert-plugin $ use-alert (>> states :alert) ({} (:title "|demo"))
  button $ {}
    :on-click $ fn (e d!)
      .show alert-plugin d!
```

#### `use-confirm`

```cirru
{}
  :text "|message text"
  :style $ {}
  :card-style $ {}
```

```cirru
let
    confirm-plugin $ use-confirm (>> states :alert) ({} (:title "|demo"))
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
  :multiline? false
  :initial "|default text"
  :placeholder "|input"
  :button-text "|Submit"
  :validator $ fn (x)
    if (blank? x) "|Blank failed" nil
```

```cirru
let
    prompt-plugin $ use-prompt (>> states :prompt) ({} (:title "|demo"))
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
      :title "|demo",
      :style $ {} (:width 400)
      :container-style $ {}
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
      :items $ []
        {} (:value "|a") (:display "|A")
        {} (:value "|b")
          :display $ div ({} (<> "|B"))
      :on-result $ fn (result d!)
        println "|got result" result

  ; "event handler to open menu"
  .show demo-modal-menu d!

  ; "render UI"
  .render demo-modal-menu
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
      :render $ fn (on-close)
        div ({})
          <> "|Place for child content"
    , show? on-close
```

```cirru
comp-modal-menu (:show-modal-menu? state)
  {} (:title "|Demo")
    :style $ {} (:width 300)
  []
    {} (:value |a) (:display "|A")
    {} (:value |b)
      :display $ div ({}) (<> "|B")
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
