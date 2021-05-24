
{} (:package |respo-alerts)
  :configs $ {} (:init-fn |respo-alerts.main/main!) (:reload-fn |respo-alerts.main/reload!)
    :modules $ [] |lilac/ |memof/ |respo.calcit/ |respo-ui.calcit/ |reel.calcit/
    :version |0.7.0-a1
  :files $ {}
    |respo-alerts.comp.container $ {}
      :ns $ quote
        ns respo-alerts.comp.container $ :require (respo-ui.core :as ui)
          respo.core :refer $ defcomp >> <> div button textarea span
          respo.comp.space :refer $ =<
          reel.comp.reel :refer $ comp-reel
          respo-alerts.config :refer $ dev?
          respo-alerts.core :refer $ comp-modal comp-modal-menu use-alert use-confirm use-prompt use-modal use-modal-menu
          respo.comp.inspect :refer $ comp-inspect
          respo-alerts.style :as style
      :defs $ {}
        |comp-container $ quote
          defcomp comp-container (reel)
            let
                store $ :store reel
                states $ :states store
                state $ either (:data states)
                  {} (:selected "\"") (:show-modal? false) (:show-modal-menu? false)
              div
                {} $ :style
                  merge ui/global ui/fullscreen ui/column $ {} (:padding 20)
                comp-hooks-usages $ >> states :hooks
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
                    :render $ fn (on-close)
                      div ({}) (<> "\"Place for child content")
                        button $ {} (:style ui/button) (:inner-text "\"Close")
                          :on-click $ fn (e d!) (on-close d!)
                demo-modal-menu $ use-modal-menu (>> states :modal-menu)
                  {} (:title "\"Demo")
                    :style $ {} (:width 300)
                    :items $ []
                      {} (:value "\"a") (:display "\"A")
                      {} (:value "\"b")
                        :display $ div ({}) (<> "\"B")
                    :on-result $ fn (result d!) (println "\"got result" result)
              div ({})
                div ({}) (<> "\"Hooks Modal usage")
                div
                  {} $ :style
                    {} $ :padding "\"8px 16px"
                  button $ {} (:inner-text "\"show modal") (:style ui/button)
                    :on-click $ fn (e d!)
                        :show demo-modal
                        , d!
                  =< 8 nil
                  button $ {} (:inner-text "\"show modal menu") (:style ui/button)
                    :on-click $ fn (e d!)
                        :show demo-modal-menu
                        , d!
                  :ui demo-modal
                  :ui demo-modal-menu
        |comp-hooks-usages $ quote
          defcomp comp-hooks-usages (states)
            let
                alert-plugin $ use-alert (>> states :alert)
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
                prompt-validation-plugin $ use-prompt (>> states :multilines-prompt)
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
                  button $ {} (:inner-text "\"show alert") (:style ui/button)
                    :on-click $ fn (e d!)
                        :show alert-plugin
                        , d!
                  =< 8 nil
                  button $ {} (:inner-text "\"show confirm") (:style ui/button)
                    :on-click $ fn (e d!)
                        :show confirm-plugin
                        , d! $ fn () (println "\"after confirmed")
                  =< 8 nil
                  button $ {} (:inner-text "\"show prompt") (:style ui/button)
                    :on-click $ fn (e d!)
                        :show prompt-plugin
                        , d! $ fn (text)
                          println "\"read from prompt" $ pr-str text
                  =< 8 nil
                  button $ {} (:inner-text "\"show multilines prompt") (:style ui/button)
                    :on-click $ fn (e d!)
                        :show prompt-multilines-plugin
                        , d! $ fn (text)
                          println "\"read from prompt" $ pr-str text
                  =< 8 nil
                  button $ {} (:inner-text "\"show validated prompt") (:style ui/button)
                    :on-click $ fn (e d!)
                        :show prompt-validation-plugin
                        , d! $ fn (text)
                          println "\"read from prompt" $ pr-str text
                :ui alert-plugin
                :ui confirm-plugin
                :ui prompt-plugin
                :ui prompt-multilines-plugin
                :ui prompt-validation-plugin
      :proc $ quote ()
    |respo-alerts.config $ {}
      :ns $ quote (ns respo-alerts.config)
      :defs $ {}
        |dev? $ quote (def dev? true)
        |site $ quote
          def site $ {} (:dev-ui "\"http://localhost:8100/main-fonts.css") (:release-ui "\"http://cdn.tiye.me/favored-fonts/main-fonts.css") (:cdn-url "\"http://cdn.tiye.me/calcit-workflow/") (:title "\"Alerts") (:icon "\"http://cdn.tiye.me/logo/respo.png") (:storage-key "\"respo-alerts")
      :proc $ quote ()
    |respo-alerts.util $ {}
      :ns $ quote (ns respo-alerts.util)
      :defs $ {}
        |focus-element! $ quote
          defn focus-element! (query)
            let
                target $ .querySelector js/document query
              if (some? target) (.focus target)
        |select-element! $ quote
          defn select-element! (query)
            let
                target $ .querySelector js/document query
              if (some? target) (.select target)
      :proc $ quote ()
    |respo-alerts.schema $ {}
      :ns $ quote (ns respo-alerts.schema)
      :defs $ {}
        |confirm-button-name $ quote (def confirm-button-name "\"respo-confirm-button")
        |input-box-name $ quote (def input-box-name "\"respo-prompt-input")
        |store $ quote
          def store $ {}
            :states $ {}
            :content |
      :proc $ quote ()
    |respo-alerts.updater $ {}
      :ns $ quote (ns respo-alerts.updater)
      :defs $ {}
        |updater $ quote
          defn updater (store op op-data op-id op-time)
            case op
              :states $ let-sugar
                    [] cursor new-state
                    , op-data
                assoc-in store
                  concat ([] :states) cursor $ [] :data
                  , new-state
              :content $ assoc store :content op-data
              :hydrate-storage op-data
              op store
      :proc $ quote ()
    |respo-alerts.main $ {}
      :ns $ quote
        ns respo-alerts.main $ :require
          [] respo.core :refer $ [] render! clear-cache! realize-ssr!
          [] respo-alerts.comp.container :refer $ [] comp-container
          [] respo-alerts.updater :refer $ [] updater
          [] respo-alerts.schema :as schema
          [] reel.util :refer $ [] listen-devtools!
          [] reel.core :refer $ [] reel-updater refresh-reel
          [] reel.schema :as reel-schema
          [] cljs.reader :refer $ [] read-string
          [] respo-alerts.config :as config
      :defs $ {}
        |ssr? $ quote
          def ssr? $ some? (js/document.querySelector |meta.respo-ssr)
        |repeat! $ quote
          defn repeat! (duration cb)
            js/setTimeout
              fn () (cb)
                repeat! (* 1000 duration) cb
              * 1000 duration
        |dispatch! $ quote
          defn dispatch! (op op-data)
            if (list? op)
              recur :states $ [] op op-data
              do
                when
                  and config/dev? $ not= :states op
                  println "\"Dispatch:" op
                reset! *reel $ reel-updater updater @*reel op op-data
        |main! $ quote
          defn main! ()
            println "\"Running mode:" $ if config/dev? "\"dev" "\"release"
            if ssr? $ render-app! realize-ssr!
            render-app! render!
            add-watch *reel :changes $ fn (reel prev) (render-app! render!)
            listen-devtools! |a dispatch!
            .addEventListener js/window |beforeunload $ fn (event) (persist-storage!)
            repeat! 60 persist-storage!
            let
                raw $ .getItem js/localStorage (:storage-key config/site)
              when (some? raw)
                dispatch! :hydrate-storage $ extract-cirru-edn (js/JSON.parse raw)
            println "|App started."
        |persist-storage! $ quote
          defn persist-storage! () $ .setItem js/localStorage (:storage-key config/site)
            js/JSON.stringify $ to-cirru-edn (:store @*reel)
        |*reel $ quote
          defatom *reel $ -> reel-schema/reel (assoc :base schema/store) (assoc :store schema/store)
        |render-app! $ quote
          defn render-app! (renderer)
            renderer mount-target (comp-container @*reel) (\ dispatch! % %2)
        |reload! $ quote
          defn reload! () (clear-cache!) (remove-watch *reel :changes)
            add-watch *reel :changes $ fn (reel prev) (render-app! render!)
            reset! *reel $ refresh-reel @*reel schema/store updater
        |mount-target $ quote
          def mount-target $ .querySelector js/document |.app
      :proc $ quote ()
    |respo-alerts.core $ {}
      :ns $ quote
        ns respo-alerts.core $ :require
          respo.util.format :refer $ hsl
          respo.schema :as respo-schema
          respo-ui.core :as ui
          respo.core :refer $ defcomp defplugin list-> <> >> div button textarea span input a defeffect
          respo.comp.space :refer $ =<
          respo-alerts.config :refer $ dev?
          respo-alerts.style :as style
          respo-alerts.schema :as schema
          respo-alerts.util :refer $ focus-element! select-element!
          respo-alerts.style :as style
      :defs $ {}
        |effect-fade $ quote
          defeffect effect-fade (show?) (action el at-place?)
            case action
              :before-update $ if show? nil
                if
                  some? $ .-firstElementChild el
                  let
                      target $ .-firstElementChild el
                      cloned $ .cloneNode target true
                      style $ .-style cloned
                      card-style $ -> cloned .-firstElementChild .-style
                    .appendChild js/document.body cloned
                    js/setTimeout
                      fn ()
                        set! (.-opacity style) 0
                        set! (.-transitionDuration card-style) "\"240ms"
                        set! (.-transform card-style) "\"scale(0.94) translate(0px,-20px)"
                      , 10
                    js/setTimeout
                      fn () $ .remove cloned
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
              action nil
        |*next-confirm-task $ quote (defatom *next-confirm-task nil)
        |comp-alert-modal $ quote
          defcomp comp-alert-modal (options show? on-read! on-close!)
            []
              effect-focus (str "\"." schema/confirm-button-name) show?
              effect-fade show?
              div
                {} $ :style
                  {} $ :position :absolute
                if show? $ div
                  {}
                    :style $ merge ui/fullscreen ui/center style/backdrop
                    :on-click $ fn (e d!)
                      let
                          event $ :event e
                        .stopPropagation event
                        on-read! e d!
                        on-close! d!
                  div
                    {}
                      :style $ merge ui/column style/card ui/global
                        {} $ :line-height "\"32px"
                        :card-style options
                      :on-click $ fn (e d!) nil
                    div ({})
                      <> $ either (:text options) "\"Alert!"
                    =< nil 8
                    div
                      {} $ :style ui/row-parted
                      span $ {}
                      button
                        {} (:style style/button) (:class-name schema/confirm-button-name)
                          :on-click $ fn (e d!) (on-read! e d!) (on-close! d!)
                        <> $ either (:button-text options) "\"Read"
        |use-modal $ quote
          defplugin use-modal (states options)
            let
                cursor $ :cursor states
                state $ either (:data states)
                  {} $ :show? false
              {}
                :ui $ comp-modal options (:show? state)
                  fn (d!)
                    d! cursor $ assoc state :show? false
                :show $ fn (d!)
                  d! cursor $ assoc state :show? true
                :close $ fn (d!)
                  d! cursor $ assoc state :show? true
        |use-confirm $ quote
          defplugin use-confirm (states options)
            let
                cursor $ :cursor states
                state $ either (:data states)
                  {} $ :show? false
              {}
                :ui $ comp-confirm-modal options (:show? state)
                  fn (e d!)
                    if (some? @*next-confirm-task) (@*next-confirm-task)
                    reset! *next-confirm-task nil
                  fn (d!)
                    d! cursor $ assoc state :show? false
                    reset! *next-confirm-task nil
                :show $ fn (d! next-task) (reset! *next-confirm-task next-task)
                  d! cursor $ assoc state :show? true
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
                    {}
                      :style $ merge ui/fullscreen ui/global ui/center style/backdrop
                        {} $ :line-height "\"32px"
                      :on-click $ fn (e d!) (on-close! d!)
                        d! cursor $ -> state (assoc :text nil) (assoc :failure nil)
                    div
                      {}
                        :style $ merge ui/column ui/global style/card
                          {} $ :line-height "\"32px"
                          :card-style options
                        :on-click $ fn (e d!) nil
                      div ({})
                        <> $ either (:text options) "\"Type in text"
                      =< nil 8
                      div ({})
                        let
                            props $ {} (:class-name schema/input-box-name) (:value text)
                              :on-input $ fn (e d!)
                                d! cursor $ assoc state :text (:value e)
                              :on-keydown $ fn (e d!)
                                when
                                  and
                                    not= 229 $ :keycode e
                                    = (:key e) "\"Enter"
                                  if (:multiline? options)
                                    when
                                      .-metaKey $ :event e
                                      check-submit! d!
                                    check-submit! d!
                              :placeholder $ either (:placeholder options) "\""
                          if (:multiline? options)
                            textarea $ merge props
                              {} $ :style
                                merge ui/textarea
                                  {} (:width "\"100%") (:min-height 120)
                                  :input-style options
                            input $ merge props
                              {} $ :style
                                merge ui/input
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
                          {} (:style style/button)
                            :on-click $ fn (e d!) (check-submit! d!)
                          <> $ either (:button-text options) "\"Finish"
        |comp-modal-menu $ quote
          defcomp comp-modal-menu (options show? on-close! on-select!)
            [] (effect-fade show?)
              div ({})
                if show? $ div
                  {}
                    :style $ merge ui/fullscreen ui/center style/backdrop
                    :on-click $ fn (e d!)
                      let
                          event $ :event e
                        .stopPropagation event
                        on-close! d!
                  div
                    {}
                      :style $ merge ui/column ui/global style/card
                        {} (:padding 0) (:line-height "\"32px")
                        :style options
                      :on-click $ fn (e d!) nil
                    let
                        title $ :title options
                      if (some? title)
                        div
                          {} $ :style
                            merge ui/center $ {} (:padding "\"4px") (:font-family ui/font-fancy)
                              :color $ hsl 0 0 70
                          <> title
                    list-> ({})
                      -> (:items options)
                        map $ fn (item)
                          [] (:value item)
                            div
                              {} (:style style-menu-item)
                                :on-click $ fn (e d!) (on-select! item d!)
                              let
                                  display $ :display item
                                if (string? display) (<> display) display
        |use-prompt $ quote
          defplugin use-prompt (states options)
            let
                cursor $ :cursor states
                state $ either (:data states)
                  {} (:show? false) (:failure nil)
              {}
                :ui $ comp-prompt-modal (>> states :modal) options (:show? state)
                  fn (text d!)
                    if (some? @*next-prompt-task) (@*next-prompt-task text)
                    reset! *next-prompt-task nil
                    d! cursor $ assoc state :show? false
                  fn (d!)
                    d! cursor $ assoc state :show? false
                    reset! *next-prompt-task nil
                :show $ fn (d! next-task) (reset! *next-prompt-task next-task)
                  d! cursor $ assoc state :show? true
        |*next-prompt-task $ quote (defatom *next-prompt-task nil)
        |style-menu-item $ quote
          def style-menu-item $ {}
            :border-top $ str "\"1px solid " (hsl 0 0 90)
            :padding "\"0 16px"
            :cursor :pointer
            :white-space :nowrap
            :line-height "\"40px"
        |comp-modal $ quote
          defcomp comp-modal (options show? on-close)
            [] (effect-fade show?)
              div
                {} $ :style
                  merge
                    {} $ :position :absolute
                    :container-style options
                if show? $ div
                  {}
                    :style $ merge ui/fullscreen ui/center style/backdrop
                    :on-click $ fn (e d!)
                      let
                          event $ :event e
                        .stopPropagation event
                        on-close d!
                  div
                    {}
                      :style $ merge ui/global ui/column style/card
                        {} (:padding 0) (:line-height "\"32px")
                        :style options
                      :on-click $ fn (e d!) nil
                    let
                        title $ :title options
                      if (some? title)
                        div
                          {} $ :style
                            merge ui/center $ {} (:padding "\"8px")
                          <> title
                    cond
                        some? $ :render options
                        (:render options) on-close
                      (some? (:render-body options))
                        (:render-body options) on-close
                      true "\"TODO render body"
        |use-modal-menu $ quote
          defplugin use-modal-menu (states options)
            let
                cursor $ :cursor states
                state $ either (:data states)
                  {} $ :show? false
              {}
                :ui $ comp-modal-menu options (:show? state)
                  fn (d!)
                    d! cursor $ assoc state :show? false
                  fn (result d!)
                      :on-result options
                      , result d!
                    d! cursor $ assoc state :show? false
                :show $ fn (d!)
                  d! cursor $ assoc state :show? true
        |effect-focus $ quote
          defeffect effect-focus (query show?) (action el at-place?)
            case action
              :update $ when show? (focus-element! query)
              action nil
        |comp-confirm-modal $ quote
          defcomp comp-confirm-modal (options show? on-confirm! on-close!)
            []
              effect-focus (str "\"." schema/confirm-button-name) show?
              effect-fade show?
              div
                {} $ :style
                  {} $ :position :absolute
                if show? $ div
                  {}
                    :style $ merge ui/fullscreen ui/center style/backdrop
                    :on-click $ fn (e d!) (on-close! d!)
                  div
                    {}
                      :style $ merge ui/column ui/global style/card
                        {} $ :line-height "\"32px"
                        :card-style options
                      :on-click $ fn (e d!) nil
                    div ({})
                      <> $ either (:text options) "\"Confirm?"
                    =< nil 8
                    div
                      {} $ :style ui/row-parted
                      span $ {}
                      button
                        {} (:style style/button) (:class-name schema/confirm-button-name)
                          :on-click $ fn (e d!) (on-confirm! e d!) (on-close! d!)
                        <> $ either (:button-text options) "\"Confirm"
        |use-alert $ quote
          defplugin use-alert (states options)
            let
                cursor $ :cursor states
                state $ either (:data states)
                  {} $ :show? false
                on-read $ either (:on-read options)
                  fn (e d!)
                    d! cursor $ assoc state :show? false
              {}
                :ui $ comp-alert-modal options (:show? state) on-read
                  fn (d!)
                    d! cursor $ assoc state :show? false
                :show $ fn (d!)
                  d! cursor $ assoc state :show? true
        |effect-select $ quote
          defeffect effect-select (query show?) (action el *local)
            case action
              :update $ when show? (select-element! query)
              action nil
      :proc $ quote ()
    |respo-alerts.style $ {}
      :ns $ quote
        ns respo-alerts.style $ :require
          [] respo.util.format :refer $ [] hsl
          [] respo-ui.core :as ui
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
      :proc $ quote ()
