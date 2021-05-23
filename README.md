
Respo alerts library in Calcit-js
----

> Respo web page based on calcit-js.

Docs https://github.com/Respo/alerts
Demo http://repo.respo-mvc.org/alerts.calcit/ .

### Hooks usages

```cirru
respo-alerts.core :refer $ use-alert use-prompt use-confirm
```

#### `use-alert`

```cirru
{}
  :trigger (comp-buttom "|trigger")
  :text "|message text",
  :style $ {}
  :card-style $ {}
```

```cirru
let
    alert-plugin $ use-alert (>> states :alert) ({} (:title "|demo"))
  button $ {}
    :on-click $ fn (e d!)
      (:show alert-plugin) d!
```

#### `use-confirm`

```cirru
{}
  :trigger (comp-button "|trigger")
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
      (:show confirm-plugin) d! $ fn () (println "|after confirmed")
```

#### `use-prompt`

```cirru
{}
  :trigger (comp-button "|trigger")
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
      (:show prompt-plugin) d! $ fn (text)
        println "|read from prompt" (pr-str text)

  :ui prompt-plugin
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

  (:show demo-modal) d!
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

  (:show demo-modal-menu) d!
```

> No hooks API for `comp-select` yet.

### Components

This library provides several UI components, so you need to control their visibilities with your own states, for example: `{} (:show-alert? true)`.

```cirru
respo-alerts.core :refer $ comp-alert comp-prompt comp-confirm
```

Since every component has its own internal states, I use `>>` in all examples:

`comp-alert` is like `alert("message")` but with a callback function:

```cirru
comp-alert (>> states :alerts)
  {}
    :trigger (comp-buttom "|trigger")
    :text "|message text"
    :style $ {}
    :card-style $ {}
  fn (e dispatch!)
    dispatch! :some/action "|data"
```

`comp-alert` is like `confirm("message")` but with a callback function returning `result`:

```cirru
comp-confirm (>> states :confirm)
  {}
    :trigger (comp-button "|trigger")
    :text "|message text"
    :style $ {}
    :card-style $ {}
  fn (e dispatch!)
    dispatch! :some/action "|data"
    println "|confirmed!"
```

`comp-prompt` is like `prompt("message", "default")` but with a callback function returning `result`:

```cirru
comp-prompt (>> states :prompt)
  {}
    :trigger (comp-button "|trigger")
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
    :card-style $ {}
  fn (result dispatch!)
    dispatch! :some/action "|data"
    dispatch! cursor (assoc state :show-prompt? false)
    println "|finish editing!" result
```

`comp-select` pops up a select menu and returns a `result` in callback function:

```cirru
def candidates $ []
  {} (:value |haskell) (:display "|Haskell")
  {} (:value |clojure) (:display "|Clojure")
  {} (:value |elixir) (:display "|Elixir")

comp-select (>> states :select) (:selected state) candidates
  {}
    :style-trigger $ {}
    :text "|Select a item from:"
  fn (result d!)
    println "|finish selecting!" result
    d! cursor (assoc state :selected result)
```

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
