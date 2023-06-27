
{} (:package |respo-alerts)
  :configs $ {} (:init-fn |respo-alerts.main/main!) (:reload-fn |respo-alerts.main/reload!) (:version |0.8.17)
    :modules $ [] |lilac/ |memof/ |respo.calcit/ |respo-ui.calcit/ |reel.calcit/
  :entries $ {}
  :files $ {}
    |respo-alerts.comp.container $ {}
      :defs $ {}
        |comp-container $ quote
          defcomp comp-container (reel)
            let
                store $ :store reel
                states $ :states store
                state $ either (:data states)
                  {} (:selected "\"") (:show-modal? false) (:show-modal-menu? false)
              div
                {}
                  :class-name $ str-spaced css/global css/fullscreen css/column
                  :style $ {} (:padding 20)
                comp-hooks-usages $ >> states :hooks
                =< nil 40
                comp-controlled-modals $ >> states :controlled
                when dev? $ comp-inspect "\"states" states
                  {} $ :bottom 0
                when dev? $ comp-reel (>> states :reel) reel ({})
        |comp-controlled-modals $ quote
          defcomp comp-controlled-modals (states)
            let
                demo-modal $ use-modal (>> states :modal)
                  {} (:title "\"demo")
                    :style $ {} (:width 400)
                    :container-style $ {}
                    :backdrop-style $ {}
                    :render $ fn (on-close)
                      div ({}) (<> "\"Place for child content")
                        button $ {} (:class-name css/button) (:inner-text "\"Close")
                          :on-click $ fn (e d!) (on-close d!)
                demo-modal-menu $ use-modal-menu (>> states :modal-menu)
                  {} (:title "\"Demo")
                    :style $ {} (:width 300)
                    :items $ []
                      {} (:value "\"a") (:display "\"A")
                      {} (:value "\"b")
                        :display $ div ({}) (<> "\"B")
                    :on-result $ fn (result d!) (println "\"got result" result)
                demo-drawer $ use-drawer (>> states :drawer)
                  {} (:title "\"demo")
                    :style $ {} (; :width 400)
                    :container-style $ {}
                    :backdrop-style $ {}
                    :render $ fn (on-close)
                      div ({}) (<> "\"Place for child content")
                        button $ {} (:class-name css/button) (:inner-text "\"Close")
                          :on-click $ fn (e d!) (on-close d!)
              div ({})
                div ({}) (<> "\"Modal usage")
                div
                  {} $ :style
                    {} $ :padding "\"8px 0px"
                  button $ {} (:inner-text "\"show modal") (:class-name css/button)
                    :on-click $ fn (e d!) (.show demo-modal d!)
                  =< 8 nil
                  button $ {} (:inner-text "\"show modal menu") (:class-name css/button)
                    :on-click $ fn (e d!) (.show demo-modal-menu d!)
                  =< 8 nil
                  button $ {} (:inner-text "\"show drawer") (:class-name css/button)
                    :on-click $ fn (e d!) (.show demo-drawer d!)
                  .render demo-modal
                  .render demo-modal-menu
                  .render demo-drawer
        |comp-hooks-usages $ quote
          defcomp comp-hooks-usages (states)
            let
                alert-plugin $ use-alert (>> states :alert)
                  {} $ :title "\"demo"
                alert-text-plugin $ use-alert (>> states :alert-text)
                  {} $ :title "\"demo"
                confirm-plugin $ use-confirm (>> states :confirm)
                  {} $ :title "\"demo"
                prompt-plugin $ use-prompt (>> states :prompt)
                  {} $ :title "\"demo"
                prompt-multilines-plugin $ use-prompt (>> states :multilines-prompt)
                  {} (:title "\"demo multilines") (:text "\"This would be a very long content of alerts, like some prompt... write multiple lines:")
                    :initial $ str (rand-int 100)
                    :style $ {}
                    :input-style $ {} (:font-family ui/font-code)
                    :multiline? true
                prompt-validation-plugin $ use-prompt (>> states :validation-prompt)
                  {} (:titl "\"validated") (:text "\"This would be a very long content of alerts, like some prompt... write multiple lines:")
                    :initial $ str (rand-int 100)
                    :style $ {}
                    :input-style $ {} (:font-family ui/font-code)
                    :multiline? true
                    :validator $ fn (x)
                      try
                        do (parse-cirru x) nil
                        fn (e) (str e)
              div ({})
                div ({}) (<> "\"Hooks")
                div ({})
                  button $ {} (:inner-text "\"show alert") (:class-name css/button)
                    :on-click $ fn (e d!) (.show alert-plugin d!)
                  =< 8 nil
                  button $ {} (:inner-text "\"show alert text") (:class-name css/button)
                    :on-click $ fn (e d!) (.show alert-text-plugin d! "\"DEMO text")
                  =< 8 nil
                  button $ {} (:inner-text "\"show confirm") (:class-name css/button)
                    :on-click $ fn (e d!)
                      .show confirm-plugin d! $ fn () (println "\"after confirmed")
                  =< 8 nil
                  button $ {} (:inner-text "\"show prompt") (:class-name css/button)
                    :on-click $ fn (e d!)
                      .show prompt-plugin d! $ fn (text)
                        println "\"read from prompt" $ pr-str text
                  =< 8 nil
                  button $ {} (:inner-text "\"show multilines prompt") (:class-name css/button)
                    :on-click $ fn (e d!)
                      .show prompt-multilines-plugin d! $ fn (text)
                        println "\"read from prompt" $ pr-str text
                  =< 8 nil
                  button $ {} (:inner-text "\"show validated prompt") (:class-name css/button)
                    :on-click $ fn (e d!)
                      .show prompt-validation-plugin d! $ fn (text)
                        println "\"read from prompt" $ pr-str text
                .render alert-plugin
                .render confirm-plugin
                .render prompt-plugin
                .render prompt-multilines-plugin
                .render prompt-validation-plugin
                .render alert-text-plugin
      :ns $ quote
        ns respo-alerts.comp.container $ :require (respo-ui.core :as ui) (respo-ui.css :as css)
          respo.core :refer $ defcomp >> <> div button textarea span
          respo.comp.space :refer $ =<
          reel.comp.reel :refer $ comp-reel
          respo-alerts.config :refer $ dev?
          respo-alerts.core :refer $ comp-modal comp-modal-menu use-alert use-confirm use-prompt use-modal use-modal-menu use-drawer
          respo.comp.inspect :refer $ comp-inspect
          respo-alerts.style :as style
          "\"@calcit/std" :refer $ rand-int
    |respo-alerts.config $ {}
      :defs $ {}
        |dev? $ quote
          def dev? $ = "\"dev" (get-env "\"mode" "\"release")
        |site $ quote
          def site $ {} (:dev-ui "\"http://localhost:8100/main-fonts.css") (:release-ui "\"http://cdn.tiye.me/favored-fonts/main-fonts.css") (:cdn-url "\"http://cdn.tiye.me/calcit-workflow/") (:title "\"Alerts") (:icon "\"http://cdn.tiye.me/logo/respo.png") (:storage-key "\"respo-alerts")
      :ns $ quote (ns respo-alerts.config)
    |respo-alerts.core $ {}
      :defs $ {}
        |*next-confirm-task $ quote (defatom *next-confirm-task nil)
        |*next-prompt-task $ quote (defatom *next-prompt-task nil)
        |Modal-class $ quote (defrecord Modal-class :render :show :close)
        |comp-alert-modal $ quote
          defcomp comp-alert-modal (options show? on-read! on-close!)
            []
              effect-focus (str "\"." schema/confirm-button-name) show?
              effect-fade show?
              div
                {} $ :style
                  {} $ :position :absolute
                if show? $ div
                  {} (:class-name css-modal-backdrop)
                    :style $ :backdrop-style options
                    :on-click $ fn (e d!)
                      let
                          event $ :event e
                        .!stopPropagation event
                        on-read! e d!
                        on-close! d!
                  div
                    {} (:class-name css-modal-card)
                      :style $ :card-style options
                      :on-click $ fn (e d!) nil
                    div ({})
                      <> $ either (:text options) "\"Alert!"
                    =< nil 8
                    div
                      {} $ :style ui/row-parted
                      span $ {}
                      button
                        {}
                          :class-name $ str-spaced css/button schema/confirm-button-name
                          :on-click $ fn (e d!) (on-read! e d!) (on-close! d!)
                        <> $ either (:button-text options) "\"Read"
                  comp-esc-listener show? on-close!
        |comp-confirm-modal $ quote
          defcomp comp-confirm-modal (options show? on-confirm! on-close!)
            []
              effect-focus (str "\"." schema/confirm-button-name) show?
              effect-fade show?
              div
                {} $ :style
                  {} $ :position :absolute
                if show? $ div
                  {} (:class-name css-modal-backdrop)
                    :style $ :backdrop-style options
                    :on-click $ fn (e d!) (on-close! d!)
                  div
                    {} (:class-name css-modal-card)
                      :style $ :card-style options
                      :on-click $ fn (e d!) nil
                    div ({})
                      <> $ either (:text options) "\"Confirm?"
                    =< nil 8
                    div
                      {} $ :style ui/row-parted
                      span $ {}
                      button
                        {}
                          :class-name $ str-spaced css/button schema/confirm-button-name
                          :on-click $ fn (e d!) (on-confirm! e d!) (on-close! d!)
                        <> $ either (:button-text options) "\"Confirm"
                  comp-esc-listener show? on-close!
        |comp-drawer $ quote
          defcomp comp-drawer (options show? on-close)
            [] (effect-slide show?)
              div
                {} $ :style
                  merge
                    {} $ :position :absolute
                    :container-style options
                if show? $ div
                  {} (:class-name css-drawer-backdrop)
                    :style $ :backdrop-style options
                    :on-click $ fn (e d!)
                      let
                          event $ :event e
                        .!stopPropagation event
                        on-close d!
                  div
                    {} (:class-name css-drawer-card)
                      :style $ merge
                        {} $ :padding 0
                        :style options
                      :on-click $ fn (e d!) nil
                    let
                        title $ :title options
                      if (some? title)
                        div
                          {} $ :class-name css-modal-title
                          <> title
                    cond
                        some? $ :render options
                        (:render options) on-close
                      (some? (:render-body options))
                        (:render-body options) on-close
                      true "\"TODO render body"
                  comp-esc-listener show? on-close
        |comp-esc-listener $ quote
          defcomp comp-esc-listener (show? on-close!)
            [] (effect-keydown)
              div $ {}
                :style $ {} (:position :absolute)
                :on-keydown $ fn (e d!) (on-close! d!)
        |comp-modal $ quote
          defcomp comp-modal (options show? on-close)
            [] (effect-fade show?)
              div
                {} $ :style
                  merge
                    {} $ :position :absolute
                    :container-style options
                if show? $ div
                  {} (:class-name css-modal-backdrop)
                    :style $ :backdrop-style options
                    :on-click $ fn (e d!)
                      let
                          event $ :event e
                        .!stopPropagation event
                        on-close d!
                  div
                    {} (:class-name css-modal-card)
                      :style $ merge
                        {} $ :padding 0
                        :style options
                      :on-click $ fn (e d!) nil
                    let
                        title $ :title options
                      if (some? title)
                        div
                          {} $ :class-name css-modal-title
                          <> title
                    cond
                        some? $ :render options
                        (:render options) on-close
                      (some? (:render-body options))
                        (:render-body options) on-close
                      true "\"TODO render body"
                  comp-esc-listener show? on-close
        |comp-modal-menu $ quote
          defcomp comp-modal-menu (options show? on-close! on-select!)
            [] (effect-fade show?)
              div ({})
                if show? $ div
                  {} (:class-name css-modal-backdrop)
                    :style $ :backdrop-style options
                    :on-click $ fn (e d!)
                      let
                          event $ :event e
                        .!stopPropagation event
                        on-close! d!
                  div
                    {} (:class-name css-modal-card)
                      :style $ merge
                        {} $ :padding 0
                        :style options
                      :on-click $ fn (e d!) nil
                    let
                        title $ :title options
                      if (some? title)
                        div
                          {} $ :style
                            merge ui/row-parted $ {} (:padding "\"4px 8px") (:font-family ui/font-fancy)
                              :color $ hsl 0 0 70
                          span nil
                          <> title
                          span $ {} (:inner-text "\"Clear") (:class-name css-clear)
                            :on-click $ fn (e d!) (on-select! nil d!)
                    list-> ({})
                      -> (:items options)
                        map $ fn (item)
                          [] (:value item)
                            div
                              {} (:class-name css-menu-item)
                                :on-click $ fn (e d!) (on-select! item d!)
                              let
                                  display $ :display item
                                if (string? display) (<> display) display
                  comp-esc-listener show? on-close!
        |comp-prompt-modal $ quote
          defcomp comp-prompt-modal (states options show? on-finish! on-close!)
            let
                initial-text $ either (:initial options) "\""
                cursor $ :cursor states
                state $ either (:data states)
                  {} (:text initial-text) (:failure nil)
                text $ either (:text state) initial-text
                check-submit! $ fn (d!)
                  let
                      validator $ :validator options
                      result $ if (fn? validator) (validator text) nil
                    if (some? result)
                      d! cursor $ assoc state :failure result
                      do (on-finish! text d!) (on-close! d!)
                        d! cursor $ -> state (assoc :text nil) (assoc :failure nil)
              []
                effect-select (str "\"." schema/input-box-name) show?
                effect-fade show?
                div
                  {} $ :style
                    {} $ :position :absolute
                  if show? $ div
                    {} (:class-name css-modal-backdrop)
                      :style $ merge
                        {} $ :line-height "\"32px"
                        :backdrop-style options
                      :on-click $ fn (e d!) (on-close! d!)
                        d! cursor $ -> state (assoc :text nil) (assoc :failure nil)
                    div
                      {} (:class-name css-modal-card)
                        :style $ :card-style options
                        :on-click $ fn (e d!) nil
                      div ({})
                        <> $ either (:text options) "\"Type in text"
                      =< nil 8
                      let
                          props $ {} (:value text)
                            :on-input $ fn (e d!)
                              d! cursor $ assoc state :text (:value e)
                            :on-keydown $ fn (e d!)
                              cond
                                  and
                                    not= 229 $ :keycode e
                                    = (:key e) "\"Enter"
                                  if (:multiline? options)
                                    when
                                      .-metaKey $ :event e
                                      check-submit! d!
                                    check-submit! d!
                                (= (:key e) "\"Escape")
                                  on-close! d!
                                true nil
                            :placeholder $ either (:placeholder options) "\""
                        if (:multiline? options)
                          textarea $ merge props
                            {}
                              :class-name $ str-spaced schema/input-box-name css/textarea
                              :style $ merge
                                {} (:width "\"100%") (:min-height 120) (:max-height "\"50vh")
                                :input-style options
                          input $ merge props
                            {}
                              :class-name $ str-spaced schema/input-box-name css/input
                              :style $ merge
                                {} $ :width "\"100%"
                                :input-style options
                      =< nil 16
                      div
                        {} $ :style ui/row-parted
                        let
                            failure $ :failure state
                          if (some? failure)
                            span $ {}
                              :style $ merge ui/flex
                                {} (:color :red) (:line-height "\"20px")
                              :inner-text failure
                            span $ {}
                        button
                          {} (:class-name css/button)
                            :on-click $ fn (e d!) (check-submit! d!)
                          <> $ either (:button-text options) "\"Finish"
                    comp-esc-listener show? on-close!
        |css-clear $ quote
          defstyle css-clear $ {}
            "\"$0" $ {} (:font-size 10) (:cursor :pointer)
              :color $ hsl 270 80 70
              :opacity 0.6
            "\"$0:hover" $ {} (:opacity 1)
        |css-drawer-backdrop $ quote
          defstyle css-drawer-backdrop $ {}
            "\"$0" $ merge ui/fullscreen style/backdrop
              {} $ :padding 0
        |css-drawer-card $ quote
          defstyle css-drawer-card $ {}
            "\"$0" $ merge ui/column style/card ui/global
              {} (:line-height "\"32px") (:height "\"100%") (:max-height "\"100vh") (:margin-right 0) (:border-radius "\"0px") (:max-width "\"50vw") (:width "\"24vw") (:min-width 360) (:box-shadow "\"-2px 0px 24px 2px hsla(0,0%,0%,0.2)") (:transition-property "\"opacity,transform")
        |css-menu-item $ quote
          defstyle css-menu-item $ {}
            "\"$0" $ {}
              :border-top $ str "\"1px solid " (hsl 0 0 90)
              :padding "\"0 16px"
              :cursor :pointer
              :white-space :nowrap
              :line-height "\"40px"
            "\"$0:hover" $ {}
              :background-color $ hsl 0 0 97
        |css-modal-backdrop $ quote
          defstyle css-modal-backdrop $ {}
            "\"$0" $ merge ui/fullscreen ui/center style/backdrop
        |css-modal-card $ quote
          defstyle css-modal-card $ {}
            "\"$0" $ merge ui/column style/card ui/global
              {} (:line-height "\"32px") (:box-shadow "\"0px 2px 24px 0px hsl(0,0%,0%,0.2)") (:transition-property "\"opacity,transform")
        |css-modal-title $ quote
          defstyle css-modal-title $ {}
            "\"$0" $ merge ui/center
              {} (:padding "\"8px") (:font-family ui/font-fancy)
        |effect-fade $ quote
          defeffect effect-fade (show?) (action el at-place?)
            case-default action nil
              :before-update $ if show? nil
                if
                  some? $ .-firstElementChild el
                  let
                      target $ .-firstElementChild el
                      cloned $ .!cloneNode target true
                      style $ .-style cloned
                      card-style $ -> cloned .-firstElementChild .-style
                    js/document.body.appendChild cloned
                    js/setTimeout
                      fn ()
                        set! (.-opacity style) 0
                        set! (.-transitionDuration card-style) "\"240ms"
                        set! (.-transform card-style) "\"scale(0.94) translate(0px,-20px)"
                      , 10
                    js/setTimeout
                      fn () $ .!remove cloned
                      , 240
              :update $ if show?
                let
                    target $ .-firstElementChild el
                    card-style $ -> target .-firstElementChild .-style
                    style $ .-style target
                  set! (.-opacity style) 0
                  set! (.-transform card-style) "\"scale(0.94) translate(0px,-20px)"
                  js/setTimeout
                    fn ()
                      set! (.-transitionDuration style) "\"240ms"
                      set! (.-transitionDuration card-style) "\"240ms"
                      set! (.-opacity style) 1
                      set! (.-transform card-style) "\"scale(1) translate(0px,0px)"
                    , 10
                , nil
        |effect-focus $ quote
          defeffect effect-focus (query show?) (action el at-place?)
            case-default action nil $ :update
              when show? $ focus-element! query
        |effect-keydown $ quote
          defeffect effect-keydown () (action el at?)
            case-default action nil
              :mount $ let
                  f $ fn (event)
                    if
                      = (.-key event) "\"Escape"
                      let
                          new-event $ new js/MouseEvent (.-type event) event
                        .!dispatchEvent el new-event
                js/window.addEventListener "\"keydown" f
                aset el "\"_listener" f
              :unmount $ let
                  f $ aget el "\"_listener"
                js/window.removeEventListener "\"keydown" f
                aset el "\"_listener" nil
        |effect-select $ quote
          defeffect effect-select (query show?) (action el *local)
            case-default action nil $ :update
              when show? $ select-element! query
        |effect-slide $ quote
          defeffect effect-slide (show?) (action el at-place?)
            case-default action nil
              :before-update $ if show? nil
                if
                  some? $ .-firstElementChild el
                  let
                      target $ .-firstElementChild el
                      cloned $ .!cloneNode target true
                      style $ .-style cloned
                      card-style $ -> cloned .-firstElementChild .-style
                    js/document.body.appendChild cloned
                    js/setTimeout
                      fn ()
                        set! (.-opacity style) 0
                        set! (.-transitionDuration card-style) "\"240ms"
                        set! (.-transform card-style) "\"translate(100%,0px)"
                      , 10
                    js/setTimeout
                      fn () $ .!remove cloned
                      , 240
              :update $ if show?
                let
                    target $ .-firstElementChild el
                    card-style $ -> target .-firstElementChild .-style
                    style $ .-style target
                  set! (.-opacity style) 0
                  set! (.-transform card-style) "\"translate(100%,0px)"
                  js/setTimeout
                    fn ()
                      set! (.-transitionDuration style) "\"240ms"
                      set! (.-transitionDuration card-style) "\"240ms"
                      set! (.-opacity style) 1
                      set! (.-transform card-style) "\"translate(0px,0px)"
                    , 10
                , nil
        |use-alert $ quote
          defplugin use-alert (states options)
            let
                cursor $ :cursor states
                state $ either (:data states)
                  {} (:show? false)
                    :text $ :text options
                on-read $ either (:on-read options)
                  fn (e d!)
                    d! cursor $ assoc state :show? false
              %::
                %{} Modal-class
                  :render $ fn (self) (nth self 1)
                  :show $ fn (self d! ? text)
                    if (some? text)
                      d! cursor $ assoc state :show? true :text text
                      d! cursor $ assoc state :show? true
                  :close $ fn (self d!)
                    d! cursor $ assoc state :show? false
                , :alert-modal $ comp-alert-modal
                  assoc options :text $ :text state
                  :show? state
                  , on-read
                    fn (d!)
                      d! cursor $ assoc state :show? false
        |use-confirm $ quote
          defplugin use-confirm (states options)
            let
                cursor $ :cursor states
                state $ either (:data states)
                  {} $ :show? false
              %::
                %{} Modal-class
                  :render $ fn (self) (nth self 1)
                  :show $ fn (self d! next-task) (reset! *next-confirm-task next-task)
                    d! cursor $ assoc state :show? true
                  :close $ fn (self d!)
                    d! cursor $ assoc state :show? false
                , :use-confirm $ comp-confirm-modal options (:show? state)
                  fn (e d!)
                    if (some? @*next-confirm-task) (@*next-confirm-task)
                    reset! *next-confirm-task nil
                  fn (d!)
                    d! cursor $ assoc state :show? false
                    reset! *next-confirm-task nil
        |use-drawer $ quote
          defn use-drawer (states options)
            let
                cursor $ :cursor states
                state $ either (:data states)
                  {} $ :show? false
              %::
                %{} Modal-class
                  :render $ fn (self) (nth self 1)
                  :show $ fn (self d!)
                    d! cursor $ assoc state :show? true
                  :close $ fn (self d!)
                    d! cursor $ assoc state :show? false
                , :use-drawer $ comp-drawer options (:show? state)
                  fn (d!)
                    d! cursor $ assoc state :show? false
        |use-modal $ quote
          defn use-modal (states options)
            let
                cursor $ :cursor states
                state $ either (:data states)
                  {} $ :show? false
              %::
                %{} Modal-class
                  :render $ fn (self) (nth self 1)
                  :show $ fn (self d!)
                    d! cursor $ assoc state :show? true
                  :close $ fn (self d!)
                    d! cursor $ assoc state :show? false
                , :use-modal $ comp-modal options (:show? state)
                  fn (d!)
                    d! cursor $ assoc state :show? false
        |use-modal-menu $ quote
          defn use-modal-menu (states options)
            let
                cursor $ :cursor states
                state $ either (:data states)
                  {} $ :show? false
              %::
                %{} Modal-class
                  :render $ fn (self) (nth self 1)
                  :show $ fn (self d!)
                    d! cursor $ assoc state :show? true
                  :close $ fn (self d!)
                    d! cursor $ assoc state :show? false
                , :use-modal-menu $ comp-modal-menu options (:show? state)
                  fn (d!)
                    d! cursor $ assoc state :show? false
                  fn (result d!)
                      :on-result options
                      , result d!
                    d! cursor $ assoc state :show? false
        |use-prompt $ quote
          defplugin use-prompt (states options)
            let
                cursor $ :cursor states
                state $ either (:data states)
                  {} (:show? false) (:failure nil)
              %::
                %{} Modal-class
                  :render $ fn (self) (nth self 1)
                  :show $ fn (self d! next-task) (reset! *next-prompt-task next-task)
                    d! cursor $ assoc state :show? true
                  :close $ fn (self d!)
                    d! cursor $ assoc state :show? false
                , :use-prompt $ comp-prompt-modal (>> states :modal) options (:show? state)
                  fn (text d!)
                    if (some? @*next-prompt-task) (@*next-prompt-task text)
                    reset! *next-prompt-task nil
                    d! cursor $ assoc state :show? false
                  fn (d!)
                    d! cursor $ assoc state :show? false
                    reset! *next-prompt-task nil
      :ns $ quote
        ns respo-alerts.core $ :require
          respo.util.format :refer $ hsl
          respo.schema :as respo-schema
          respo-ui.core :as ui
          respo-ui.css :as css
          respo.core :refer $ defcomp defplugin list-> <> >> div button textarea span input a defeffect
          respo.css :refer $ defstyle
          respo.comp.space :refer $ =<
          respo-alerts.config :refer $ dev?
          respo-alerts.style :as style
          respo-alerts.schema :as schema
          respo-alerts.util :refer $ focus-element! select-element!
          respo-alerts.style :as style
    |respo-alerts.main $ {}
      :defs $ {}
        |*reel $ quote
          defatom *reel $ -> reel-schema/reel (assoc :base schema/store) (assoc :store schema/store)
        |dispatch! $ quote
          defn dispatch! (op ? op-data)
            if (list? op)
              recur $ :: :state op op-data
              do
                when
                  and config/dev? $ not= :states op
                  println "\"Dispatch:" op
                reset! *reel $ reel-updater updater @*reel op
        |main! $ quote
          defn main! ()
            println "\"Running mode:" $ if config/dev? "\"dev" "\"release"
            if config/dev? $ load-console-formatter!
            render-app!
            add-watch *reel :changes $ fn (reel prev) (render-app!)
            listen-devtools! |a dispatch!
            ; js/window.addEventListener |beforeunload $ fn (event) (persist-storage!)
            ; js/setInterval persist-storage! 60000
            ; let
                raw $ js/localStorage.getItem (:storage-key config/site)
              when (some? raw)
                dispatch! :hydrate-storage $ parse-cirru-edn raw
            println "|App started."
        |mount-target $ quote
          def mount-target $ js/document.querySelector |.app
        |persist-storage! $ quote
          defn persist-storage! (? e)
            js/localStorage.setItem (:storage-key config/site)
              format-cirru-edn $ :store @*reel
        |reload! $ quote
          defn reload! () $ if (nil? build-errors)
            do (remove-watch *reel :changes) (clear-cache!)
              add-watch *reel :changes $ fn (reel prev) (render-app!)
              reset! *reel $ refresh-reel @*reel schema/store updater
              hud! "\"ok~" "\"Ok"
            hud! "\"error" build-errors
        |render-app! $ quote
          defn render-app! () $ render! mount-target (comp-container @*reel) dispatch!
      :ns $ quote
        ns respo-alerts.main $ :require
          respo.core :refer $ render! clear-cache! realize-ssr!
          respo-alerts.comp.container :refer $ comp-container
          respo-alerts.updater :refer $ updater
          respo-alerts.schema :as schema
          reel.util :refer $ listen-devtools!
          reel.core :refer $ reel-updater refresh-reel
          reel.schema :as reel-schema
          respo-alerts.config :as config
          "\"./calcit.build-errors" :default build-errors
          "\"bottom-tip" :default hud!
    |respo-alerts.schema $ {}
      :defs $ {}
        |confirm-button-name $ quote (def confirm-button-name "\"respo-confirm-button")
        |input-box-name $ quote (def input-box-name "\"respo-prompt-input")
        |store $ quote
          def store $ {}
            :states $ {}
            :content |
      :ns $ quote (ns respo-alerts.schema)
    |respo-alerts.style $ {}
      :defs $ {}
        |backdrop $ quote
          def backdrop $ {}
            :background-color $ hsl 0 30 10 0.6
            :position :fixed
            :z-index 999
            :padding 16
        |button $ quote
          def button $ merge ui/button
            {} (:border-radius "\"4px") (:background-color :white)
              :border-color $ hsl 240 60 90
        |card $ quote
          def card $ {}
            :background-color $ hsl 0 0 100
            :max-width "\"600px"
            :width "\"100%"
            :max-height "\"80vh"
            :overflow :auto
            :border-radius "\"3px"
            :color $ hsl 0 0 0
            :margin :auto
            :padding 16
      :ns $ quote
        ns respo-alerts.style $ :require
          respo.util.format :refer $ hsl
          respo-ui.core :as ui
    |respo-alerts.updater $ {}
      :defs $ {}
        |updater $ quote
          defn updater (store op op-id op-time)
            tag-match op
                :states cursor s
                update-states store cursor s
              (:content c) (assoc store :content c)
              (:hydrate-storage d) d
              _ $ do (js/console.log "\"Unknown op:" op) store
      :ns $ quote
        ns respo-alerts.updater $ :require
          respo.cursor :refer $ update-states
          respo-alerts.config :refer $ dev?
    |respo-alerts.util $ {}
      :defs $ {}
        |focus-element! $ quote
          defn focus-element! (query)
            let
                target $ js/document.querySelector query
              if (some? target) (.focus target)
        |select-element! $ quote
          defn select-element! (query)
            let
                target $ js/document.querySelector query
              if (some? target) (.!select target)
      :ns $ quote (ns respo-alerts.util)
