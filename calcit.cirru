
{} (:about "|Machine-generated snapshot. Do not edit directly — changes will be overwritten. Use `cr query` to inspect and `cr edit`/`cr tree` to modify. Run `cr docs agents --full` first. Manual edits must follow format and schema conventions, then run `cr edit format`.") (:package |respo-alerts)
  :configs $ {} (:init-fn |respo-alerts.main/main!) (:reload-fn |respo-alerts.main/reload!) (:version |0.10.11)
    :modules $ [] |lilac/ |memof/ |respo.calcit/ |respo-ui.calcit/ |reel.calcit/
  :entries $ {}
  :files $ {}
    |respo-alerts.comp.container $ %{} :FileEntry
      :defs $ {}
        |comp-container $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            defcomp comp-container (reel)
              let
                  store $ :store reel
                  states $ :states store
                  state $ either (:data states)
                    {} (:selected |) (:show-modal? false) (:show-modal-menu? false)
                div
                  {}
                    :class-name $ str-spaced css/global css/fullscreen css/column
                    :style $ {} (:padding 20)
                  div ({})
                    a
                      {} (:href |https://respo-mvc.org/) (:target |_blank)
                      img $ {} (:class-name style-logo) (:src |https://cos-sh.tiye.me/cos-up/bb4c2755050318e864b56f59145d726e-SubstractRespo.png)
                  =< nil 40
                  comp-hooks-usages $ >> states :hooks
                  =< nil 40
                  comp-controlled-modals $ >> states :controlled
                  =< nil 40
                  comp-demo-trigger $ >> states :trigger
                  when dev? $ comp-inspect |states states
                    {} $ :bottom 0
                  when dev? $ comp-reel (>> states :reel) reel ({})
          :examples $ []
        |comp-controlled-modals $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            defcomp comp-controlled-modals (states)
              let
                  demo-modal $ use-modal (>> states :modal)
                    {} (:title |demo)
                      :style $ {} (:width 400)
                      :container-style $ {}
                      :backdrop-style $ {}
                      :render $ fn (on-close)
                        div ({}) (<> "|Place for child content")
                          button $ {} (:class-name css/button) (:inner-text |Close)
                            :on-click $ fn (e d!) (on-close d!)
                  demo-modal-menu $ use-modal-menu (>> states :modal-menu)
                    {} (:title |Demo)
                      :style $ {} (:width 300)
                      :items $ [] (:: :item |a |A)
                        :: :item |b $ div ({}) (<> |B)
                      :on-result $ fn (result d!) (println "|got result" result)
                  demo-drawer $ use-drawer (>> states :drawer)
                    {} (:title |demo)
                      :style $ {} (; :width 400)
                      :container-style $ {}
                      :backdrop-style $ {}
                      :render $ fn (on-close)
                        div ({}) (<> "|Place for child content")
                          button $ {} (:class-name css/button) (:inner-text |Close)
                            :on-click $ fn (e d!) (on-close d!)
                div ({})
                  div ({}) (<> "|Modal usage")
                  div
                    {} $ :style
                      {} $ :padding "|8px 0px"
                    button $ {} (:inner-text "|show modal") (:class-name css/button)
                      :on-click $ fn (e d!) (.show demo-modal d!)
                    =< 8 nil
                    button $ {} (:inner-text "|show modal menu") (:class-name css/button)
                      :on-click $ fn (e d!) (.show demo-modal-menu d!)
                    =< 8 nil
                    button $ {} (:inner-text "|show drawer") (:class-name css/button)
                      :on-click $ fn (e d!) (.show demo-drawer d!)
                    .render demo-modal
                    .render demo-modal-menu
                    .render demo-drawer
          :examples $ []
        |comp-demo-trigger $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            defcomp comp-demo-trigger (states)
              let
                  cursor $ :cursor states
                  state $ either (:data states)
                    {} $ :visible? false
                div ({})
                  div ({}) (<> |Trigger)
                  div ({})
                    comp-trigger (:visible? state)
                      button $ {} (:inner-text |Toggle) (:class-name css/button)
                        :on-click $ fn (e d!)
                          d! cursor $ update state :visible? not
          :examples $ []
        |comp-hooks-usages $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            defcomp comp-hooks-usages (states)
              let
                  alert-plugin $ use-alert (>> states :alert)
                    {} $ :title |demo
                  alert-text-plugin $ use-alert (>> states :alert-text)
                    {} $ :title |demo
                  confirm-plugin $ use-confirm (>> states :confirm)
                    {} $ :title |demo
                  prompt-plugin $ use-prompt (>> states :prompt)
                    {} $ :title |demo
                  prompt-multilines-plugin $ use-prompt (>> states :multilines-prompt)
                    {} (:title "|demo multilines") (:text "|This would be a very long content of alerts, like some prompt... write multiple lines:")
                      :initial $ str (rand-int 100)
                      :style $ {}
                      :input-class css/font-code!
                      :multiline? true
                  prompt-validation-plugin $ use-prompt (>> states :validation-prompt)
                    {} (:title |validated) (:text "|This would be a very long content of alerts, like some prompt... write multiple lines:")
                      :initial $ str (rand-int 100)
                      :style $ {}
                      :input-class css/font-code!
                      :multiline? true
                      :validator $ fn (x)
                        try
                          do (parse-cirru x) nil
                          fn (e) (str e)
                div ({})
                  div ({}) (<> |Hooks)
                  div ({})
                    comp-trigger (.show? alert-plugin)
                      button $ {} (:inner-text "|show alert") (:class-name css/button)
                        :on-click $ fn (e d!) (.show alert-plugin d!)
                    =< 8 nil
                    button $ {} (:inner-text "|show alert text") (:class-name css/button)
                      :on-click $ fn (e d!) (.show alert-text-plugin d! "|DEMO text")
                    =< 8 nil
                    button $ {} (:inner-text "|show confirm") (:class-name css/button)
                      :on-click $ fn (e d!)
                        .show confirm-plugin d! $ fn () (println "|after confirmed")
                    =< 8 nil
                    button $ {} (:inner-text "|show confirm with text") (:class-name css/button)
                      :on-click $ fn (e d!)
                        let
                            text $ js/prompt "|Input confirm text"
                          if
                            not $ blank? text
                            .show-with-text confirm-plugin d! (str "|Confirmed: " text)
                              fn () $ println "|after confirmed"
                    =< 8 nil
                    button $ {} (:inner-text "|show prompt") (:class-name css/button)
                      :on-click $ fn (e d!)
                        .show prompt-plugin d! $ fn (text)
                          println "|read from prompt" $ to-lispy-string text
                    =< 8 nil
                    button $ {} (:inner-text "|show multilines prompt") (:class-name css/button)
                      :on-click $ fn (e d!)
                        .show prompt-multilines-plugin d! $ fn (text)
                          println "|read from prompt" $ to-lispy-string text
                    =< 8 nil
                    comp-trigger (.show? prompt-validation-plugin)
                      button $ {} (:inner-text "|show validated prompt") (:class-name css/button)
                        :on-click $ fn (e d!)
                          .show prompt-validation-plugin d! $ fn (text)
                            println "|read from prompt" $ to-lispy-string text
                  .render alert-plugin
                  .render confirm-plugin
                  .render prompt-plugin
                  .render prompt-multilines-plugin
                  .render prompt-validation-plugin
                  .render alert-text-plugin
          :examples $ []
        |style-logo $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            defstyle style-logo $ {}
              |& $ {} (:width 120)
          :examples $ []
      :ns $ %{} :NsEntry (:doc |)
        :code $ quote
          ns respo-alerts.comp.container $ :require (respo-ui.core :as ui)
            respo.css :refer $ defstyle
            respo-ui.css :as css
            respo.core :refer $ defcomp >> <> div button textarea span img a
            respo.comp.space :refer $ =<
            reel.comp.reel :refer $ comp-reel
            respo-alerts.config :refer $ dev?
            respo-alerts.core :refer $ comp-modal comp-modal-menu use-alert use-confirm use-prompt use-modal use-modal-menu use-drawer
            respo.comp.inspect :refer $ comp-inspect
            respo-alerts.style :as style
            |@calcit/std :refer $ rand-int
            respo-alerts.trigger :refer $ comp-trigger
            respo-alerts.trigger :refer $ comp-trigger
    |respo-alerts.config $ %{} :FileEntry
      :defs $ {}
        |dev? $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            def dev? $ = |dev (get-env |mode |release)
          :examples $ []
        |site $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            def site $ {} (:dev-ui |http://localhost:8100/main-fonts.css) (:release-ui |http://cdn.tiye.me/favored-fonts/main-fonts.css) (:cdn-url |http://cdn.tiye.me/calcit-workflow/) (:title |Alerts) (:icon |http://cdn.tiye.me/logo/respo.png) (:storage-key |respo-alerts)
          :examples $ []
      :ns $ %{} :NsEntry (:doc |)
        :code $ quote (ns respo-alerts.config)
    |respo-alerts.core $ %{} :FileEntry
      :defs $ {}
        |%alert-actions $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            defimpl %alert-actions AlertActions
              .render $ fn (self)
                hint-fn $ {}
                  :args $ [] :dynamic
                  :return :dynamic
                tag-match self $
                  :plugin node cursor state
                  , node
              .show $ fn (self d! ? text)
                hint-fn $ {}
                  :args $ [] :dynamic :fn (:: :optional :string)
                  :return :unit
                tag-match self $
                  :plugin node cursor state
                  if (some? text)
                    d! cursor $ -> state (assoc :show? true) (assoc :text text)
                    d! cursor $ assoc state :show? true
              .close $ fn (self d!)
                hint-fn $ {}
                  :args $ [] :dynamic :fn
                  :return :unit
                tag-match self $
                  :plugin node cursor state
                  d! cursor $ assoc state :show? false
              .show? $ fn (self)
                hint-fn $ {}
                  :args $ [] :dynamic
                  :return :bool
                tag-match self $
                  :plugin node cursor state
                  :show? state
          :examples $ []
        |%confirm-actions $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            defimpl %confirm-actions ConfirmActions
              .render $ fn (self)
                hint-fn $ {}
                  :args $ [] :dynamic
                  :return :dynamic
                tag-match self $
                  :plugin node cursor state *next
                  , node
              .show $ fn (self d! next-task)
                hint-fn $ {}
                  :args $ [] :dynamic :fn :fn
                  :return :unit
                tag-match self $
                  :plugin node cursor state *next-confirm-task
                  do (.set! *next-confirm-task next-task)
                    d! cursor $ -> state (assoc :show? true) (assoc :text nil)
              .show-with-text $ fn (self d! text next-task)
                hint-fn $ {}
                  :args $ [] :dynamic :fn :string :fn
                  :return :unit
                tag-match self $
                  :plugin node cursor state *next-confirm-task
                  do (.set! *next-confirm-task next-task)
                    d! cursor $ -> state (assoc :show? true) (assoc :text text)
              .close $ fn (self d!)
                hint-fn $ {}
                  :args $ [] :dynamic :fn
                  :return :unit
                tag-match self $
                  :plugin node cursor state *next
                  d! cursor $ assoc state :show? false
              .show? $ fn (self)
                hint-fn $ {}
                  :args $ [] :dynamic
                  :return :bool
                tag-match self $
                  :plugin node cursor state
                  :show? state
          :examples $ []
        |%drawer-actions $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            defimpl %drawer-actions DrawerActions
              .render $ fn (self)
                hint-fn $ {}
                  :args $ [] :dynamic
                  :return :dynamic
                tag-match self $
                  :plugin node cursor state
                  , node
              .show $ fn (self d!)
                hint-fn $ {}
                  :args $ [] :dynamic :fn
                  :return :unit
                tag-match self $
                  :plugin node cursor state
                  d! cursor $ assoc state :show? true
              .close $ fn (self d!)
                hint-fn $ {}
                  :args $ [] :dynamic :fn
                  :return :unit
                tag-match self $
                  :plugin node cursor state
                  d! cursor $ assoc state :show? false
              .show? $ fn (self)
                hint-fn $ {}
                  :args $ [] :dynamic
                  :return :bool
                tag-match self $
                  :plugin node cursor state
                  :show? state
          :examples $ []
        |%modal-actions $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            defimpl %modal-actions ModalActions
              .render $ fn (self)
                hint-fn $ {}
                  :args $ [] :dynamic
                  :return :dynamic
                tag-match self $
                  :plugin node cursor state
                  , node
              .show $ fn (self d!)
                hint-fn $ {}
                  :args $ [] :dynamic :fn
                  :return :unit
                tag-match self $
                  :plugin node cursor state
                  d! cursor $ assoc state :show? true
              .close $ fn (self d!)
                hint-fn $ {}
                  :args $ [] :dynamic :fn
                  :return :unit
                tag-match self $
                  :plugin node cursor state
                  d! cursor $ assoc state :show? false
              .show? $ fn (self)
                hint-fn $ {}
                  :args $ [] :dynamic
                  :return :bool
                tag-match self $
                  :plugin node cursor state
                  :show? state
          :examples $ []
        |%modal-menu-actions $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            defimpl %modal-menu-actions ModalMenuActions
              .render $ fn (self)
                hint-fn $ {}
                  :args $ [] :dynamic
                  :return :dynamic
                tag-match self $
                  :plugin node cursor state
                  , node
              .show $ fn (self d!)
                hint-fn $ {}
                  :args $ [] :dynamic :fn
                  :return :unit
                tag-match self $
                  :plugin node cursor state
                  d! cursor $ assoc state :show? true
              .close $ fn (self d!)
                hint-fn $ {}
                  :args $ [] :dynamic :fn
                  :return :unit
                tag-match self $
                  :plugin node cursor state
                  d! cursor $ assoc state :show? false
              .show? $ fn (self)
                hint-fn $ {}
                  :args $ [] :dynamic
                  :return :bool
                tag-match self $
                  :plugin node cursor state
                  :show? state
          :examples $ []
        |%prompt-actions $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            defimpl %prompt-actions PromptActions
              .render $ fn (self)
                hint-fn $ {}
                  :args $ [] :dynamic
                  :return :dynamic
                tag-match self $
                  :plugin node cursor state *next
                  , node
              .show $ fn (self d! next-task)
                hint-fn $ {}
                  :args $ [] :dynamic :fn :fn
                  :return :unit
                tag-match self $
                  :plugin node cursor state *next-prompt-task
                  do (.set! *next-prompt-task next-task)
                    d! cursor $ assoc state :show? true
              .close $ fn (self d!)
                hint-fn $ {}
                  :args $ [] :dynamic :fn
                  :return :unit
                tag-match self $
                  :plugin node cursor state *next
                  d! cursor $ assoc state :show? false
              .show? $ fn (self)
                hint-fn $ {}
                  :args $ [] :dynamic
                  :return :bool
                tag-match self $
                  :plugin node cursor state *next
                  :show? state
          :examples $ []
        |AlertActions $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            deftrait AlertActions
              .render $ :: :fn
                {}
                  :generics $ [] 'T
                  :args $ [] 'T
                  :return :dynamic
              .show $ :: :fn
                {}
                  :generics $ [] 'T
                  :args $ [] 'T :fn (:: :optional :string)
                  :return :unit
              .close $ :: :fn
                {}
                  :generics $ [] 'T
                  :args $ [] 'T :fn
                  :return :unit
              .show? $ :: :fn
                {}
                  :generics $ [] 'T
                  :args $ [] 'T
                  :return :bool
          :examples $ []
        |ConfirmActions $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            deftrait ConfirmActions
              .render $ :: :fn
                {}
                  :generics $ [] 'T
                  :args $ [] 'T
                  :return :dynamic
              .show $ :: :fn
                {}
                  :generics $ [] 'T
                  :args $ [] 'T :fn :fn
                  :return :unit
              .show-with-text $ :: :fn
                {}
                  :generics $ [] 'T
                  :args $ [] 'T :fn :string :fn
                  :return :unit
              .close $ :: :fn
                {}
                  :generics $ [] 'T
                  :args $ [] 'T :fn
                  :return :unit
              .show? $ :: :fn
                {}
                  :generics $ [] 'T
                  :args $ [] 'T
                  :return :bool
          :examples $ []
        |DrawerActions $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            deftrait DrawerActions
              .render $ :: :fn
                {}
                  :generics $ [] 'T
                  :args $ [] 'T
                  :return :dynamic
              .show $ :: :fn
                {}
                  :generics $ [] 'T
                  :args $ [] 'T :fn
                  :return :unit
              .close $ :: :fn
                {}
                  :generics $ [] 'T
                  :args $ [] 'T :fn
                  :return :unit
              .show? $ :: :fn
                {}
                  :generics $ [] 'T
                  :args $ [] 'T
                  :return :bool
          :examples $ []
        |ModalActions $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            deftrait ModalActions
              .render $ :: :fn
                {}
                  :generics $ [] 'T
                  :args $ [] 'T
                  :return :dynamic
              .show $ :: :fn
                {}
                  :generics $ [] 'T
                  :args $ [] 'T :fn
                  :return :unit
              .close $ :: :fn
                {}
                  :generics $ [] 'T
                  :args $ [] 'T :fn
                  :return :unit
              .show? $ :: :fn
                {}
                  :generics $ [] 'T
                  :args $ [] 'T
                  :return :bool
          :examples $ []
        |ModalMenuActions $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            deftrait ModalMenuActions
              .render $ :: :fn
                {}
                  :generics $ [] 'T
                  :args $ [] 'T
                  :return :dynamic
              .show $ :: :fn
                {}
                  :generics $ [] 'T
                  :args $ [] 'T :fn
                  :return :unit
              .close $ :: :fn
                {}
                  :generics $ [] 'T
                  :args $ [] 'T :fn
                  :return :unit
              .show? $ :: :fn
                {}
                  :generics $ [] 'T
                  :args $ [] 'T
                  :return :bool
          :examples $ []
        |PluginNodeCursorState $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            defenum PluginNodeCursorState $ :plugin :tuple :list :map
          :examples $ []
        |PluginNodeCursorStateTask $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            defenum PluginNodeCursorStateTask $ :plugin :tuple :list :map :ref
          :examples $ []
        |PromptActions $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            deftrait PromptActions
              .render $ :: :fn
                {}
                  :generics $ [] 'T
                  :args $ [] 'T
                  :return :dynamic
              .show $ :: :fn
                {}
                  :generics $ [] 'T
                  :args $ [] 'T :fn :fn
                  :return :unit
              .close $ :: :fn
                {}
                  :generics $ [] 'T
                  :args $ [] 'T :fn
                  :return :unit
              .show? $ :: :fn
                {}
                  :generics $ [] 'T
                  :args $ [] 'T
                  :return :bool
          :examples $ []
        |alert-actions-plugin $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            def alert-actions-plugin $ impl-traits PluginNodeCursorState %alert-actions
          :examples $ []
        |comp-alert-modal $ %{} :CodeEntry (:doc "||Alert modal component. Shows a simple message dialog with a confirm button. Used internally by use-alert hook.") (:schema :dynamic)
          :code $ quote
            defcomp comp-alert-modal (options show? on-read! on-close!)
              []
                effect-focus (str |. schema/confirm-button-name) show?
                effect-fade show?
                div
                  {} $ :style
                    {} $ :position :absolute
                  if show? $ div
                    {}
                      :class-name $ str-spaced css/fullscreen css/center style-modal-backdrop (get options :backdrop-class)
                      :style $ get options :backdrop-style
                      :on-click $ fn (e d!)
                        let
                            event $ :event e
                          .!stopPropagation event
                          on-read! e d!
                          on-close! d!
                    div
                      {}
                        :class-name $ str-spaced style-modal-card css/global css/column (get options :card-class)
                        :style $ get options :card-style
                        :on-click $ fn (e d!) nil
                      div ({})
                        <> $ either (get options :text) |Alert!
                      =< nil 8
                      div
                        {} $ :class-name css/row-parted
                        span $ {}
                        button
                          {}
                            :class-name $ str-spaced css/button schema/confirm-button-name (get options :confirm-class)
                            :style $ get options :confirm-style
                            :on-click $ fn (e d!) (on-read! e d!) (on-close! d!)
                          <> $ either (get options :confirm-text) |Read
                    comp-esc-listener show? on-close!
          :examples $ []
            quote $ comp-alert-modal
              {} $ :text "|Hello World"
              , show? on-read! on-close!
        |comp-confirm-modal $ %{} :CodeEntry (:doc "||Confirm modal component. Shows a dialog with confirm and cancel buttons. Used internally by use-confirm hook.") (:schema :dynamic)
          :code $ quote
            defcomp comp-confirm-modal (options show? on-confirm! on-close!)
              []
                effect-focus (str |. schema/confirm-button-name) show?
                effect-fade show?
                div
                  {} $ :style
                    {} $ :position :absolute
                  if show? $ div
                    {}
                      :class-name $ str-spaced css/fullscreen css/center style-modal-backdrop (get options :backdrop-class)
                      :style $ :backdrop-style options
                      :on-click $ fn (e d!) (on-close! d!)
                    div
                      {}
                        :class-name $ str-spaced css/global css/column style-modal-card (get options :card-class)
                        :style $ :card-style options
                        :on-click $ fn (e d!) nil
                      div ({})
                        <> $ either (:text options) |Confirm?
                      =< nil 8
                      div
                        {} $ :class-name css/row-parted
                        span $ {}
                        button
                          {}
                            :class-name $ str-spaced css/button schema/confirm-button-name (get options :confirm-class)
                            :on-click $ fn (e d!) (on-confirm! e d!) (on-close! d!)
                          <> $ either (:button-text options) |Confirm
                    comp-esc-listener show? on-close!
          :examples $ []
            quote $ comp-confirm-modal
              {} $ :text "|Are you sure?"
              , show? on-confirm! on-close!
        |comp-drawer $ %{} :CodeEntry (:doc "||Drawer component. Renders a sliding panel from the side with custom content via :render function in options.") (:schema :dynamic)
          :code $ quote
            defcomp comp-drawer (options show? on-close)
              [] (effect-slide show?)
                div
                  {} $ :style
                    merge
                      {} $ :position :absolute
                      :container-style options
                  if show? $ div
                    {}
                      :class-name $ str-spaced css/fullscreen style-drawer-backdrop (get options :backdrop-class)
                      :style $ :backdrop-style options
                      :on-click $ fn (e d!)
                        let
                            event $ :event e
                          .!stopPropagation event
                          on-close d!
                    div
                      {}
                        :class-name $ str-spaced css/global css/column style-drawer-card (get options :card-class)
                        :style $ merge
                          {} $ :padding 0
                          :style options
                        :on-click $ fn (e d!) nil
                      let
                          title $ :title options
                        if (some? title)
                          div
                            {} $ :class-name (str-spaced css/center css/font-fancy! style-modal-title)
                            <> title
                      cond
                          some? $ :render options
                          (:render options) on-close
                        (some? (:render-body options))
                          (:render-body options) on-close
                        true "|TODO render body"
                    comp-esc-listener show? on-close
          :examples $ []
            quote $ comp-drawer
              {} (:title |Settings)
                :render $ fn (on-close)
                  div ({}) (<> |Content)
              , show? on-close
        |comp-esc-listener $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            defcomp comp-esc-listener (show? on-close!)
              [] (effect-keydown)
                div $ {}
                  :style $ {} (:position :absolute)
                  :on-keydown $ fn (e d!) (on-close! d!)
          :examples $ []
        |comp-modal $ %{} :CodeEntry (:doc "||Modal component. Renders a modal dialog with custom content via :render function in options.") (:schema :dynamic)
          :code $ quote
            defcomp comp-modal (options show? on-close)
              [] (effect-fade show?)
                div
                  {} $ :style
                    merge
                      {} $ :position :absolute
                      :container-style options
                  if show? $ div
                    {}
                      :class-name $ str-spaced css/fullscreen css/center style-modal-backdrop (get options :backdrop-class)
                      :style $ :backdrop-style options
                      :on-click $ fn (e d!)
                        let
                            event $ :event e
                          .!stopPropagation event
                          on-close d!
                    div
                      {}
                        :class-name $ str-spaced css/global css/column style-modal-card (get options :card-class)
                        :style $ merge
                          {} $ :padding 0
                          :style options
                          get options :card-style
                        :on-click $ fn (e d!) nil
                      let
                          title $ :title options
                        if (some? title)
                          div
                            {} $ :class-name (str-spaced css/center css/font-fancy! style-modal-title)
                            <> title
                      cond
                          some? $ :render options
                          (:render options) on-close
                        (some? (:render-body options))
                          (:render-body options) on-close
                        true "|TODO render body"
                    comp-esc-listener show? on-close
          :examples $ []
            quote $ comp-modal
              {} (:title |Dialog)
                :render $ fn (on-close)
                  div ({}) (<> |Content)
              , show? on-close
        |comp-modal-menu $ %{} :CodeEntry (:doc "||Modal menu component. Shows a modal dialog with a list of selectable items. Define items via :items in options.") (:schema :dynamic)
          :code $ quote
            defcomp comp-modal-menu (options show? on-close! on-select!)
              [] (effect-fade show?)
                div ({})
                  if show? $ div
                    {}
                      :class-name $ str-spaced css/fullscreen css/center style-modal-backdrop (get options :backdrop-class)
                      :style $ :backdrop-style options
                      :on-click $ fn (e d!)
                        let
                            event $ :event e
                          .!stopPropagation event
                          on-close! d!
                    div
                      {}
                        :class-name $ str-spaced css/global css/column style-modal-card (get options :card-class)
                        :style $ merge
                          {} $ :padding 0
                          :style options
                        :on-click $ fn (e d!) nil
                      let
                          title $ :title options
                        if (some? title)
                          div
                            {}
                              :class-name $ str-spaced css/row-parted css/font-fancy!
                              :style $ {} (:padding "|4px 8px")
                                :color $ hsl 0 0 70
                            span $ {}
                            <> title
                            span $ {} (:inner-text |Clear) (:class-name style-clear)
                              :on-click $ fn (e d!) (on-select! nil d!)
                      list-> ({})
                        -> (:items options)
                          map $ fn (info)
                            let
                                item $ cond
                                    tuple? info
                                    , info
                                  (map? info)
                                    :: :item (&map:get info :value) (&map:get info :display)
                                  true $ raise "|Unknown menu item"
                              tag-match item $
                                :item v l
                                [] v $ div
                                  {} (:class-name style-menu-item)
                                    :on-click $ fn (e d!) (on-select! item d!)
                                  if (string? l) (<> l) l
                    comp-esc-listener show? on-close!
          :examples $ []
            quote $ comp-modal-menu
              {} (:title |Choose)
                :items $ [] (:: :item |a |A) (:: :item |b |B)
              , show? on-close! on-select!
        |comp-prompt-modal $ %{} :CodeEntry (:doc "||Prompt modal component. Shows a dialog with text input field and validation. Used internally by use-prompt hook.") (:schema :dynamic)
          :code $ quote
            defcomp comp-prompt-modal (states options show? on-finish! on-close!)
              let
                  initial-text $ either (:initial options) |
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
                  effect-select (str |. schema/input-box-name) show?
                  effect-fade show?
                  div
                    {} $ :style
                      {} $ :position :absolute
                    if show? $ div
                      {}
                        :class-name $ str-spaced css/fullscreen css/center style-modal-backdrop (get options :backdrop-class)
                        :style $ merge
                          {} $ :line-height |32px
                          :backdrop-style options
                        :on-click $ fn (e d!) (on-close! d!)
                          d! cursor $ -> state (assoc :text nil) (assoc :failure nil)
                      div
                        {}
                          :class-name $ str-spaced css/global css/column style-modal-card (get options :card-class)
                          :style $ :card-style options
                          :on-click $ fn (e d!) nil
                        div ({})
                          <> $ either (:text options) "|Type in text"
                        =< nil 8
                        let
                            props $ {} (:value text)
                              :on-input $ fn (e d!)
                                d! cursor $ assoc state :text (:value e)
                              :on-keydown $ fn (e d!)
                                cond
                                    and
                                      not= 229 $ :keycode e
                                      = (:key e) |Enter
                                    if (:multiline? options)
                                      when
                                        .-metaKey $ :event e
                                        check-submit! d!
                                      check-submit! d!
                                  (= (:key e) |Escape)
                                    on-close! d!
                                  true nil
                              :placeholder $ either (:placeholder options) |
                          if (:multiline? options)
                            textarea $ merge props
                              {}
                                :class-name $ str-spaced schema/input-box-name css/textarea (get options :input-class)
                                :style $ merge
                                  {} (:width |100%) (:min-height 120) (:max-height |50vh)
                                  get options :input-style
                            input $ merge props
                              {}
                                :class-name $ str-spaced schema/input-box-name css/input (get options :input-class)
                                :style $ merge
                                  {} $ :width |100%
                                  get options :input-style
                        =< nil 16
                        div
                          {} $ :class-name css/row-parted
                          let
                              failure $ :failure state
                            if (some? failure)
                              span $ {}
                                :style $ merge ui/flex
                                  {} (:color :red) (:line-height |20px)
                                :inner-text failure
                              span $ {}
                          button
                            {}
                              :class-name $ str-spaced css/button (get options :confirm-class)
                              :on-click $ fn (e d!) (check-submit! d!)
                            <> $ either (:button-text options) |Finish
                      comp-esc-listener show? on-close!
          :examples $ []
            quote $ comp-prompt-modal states
              {} (:text "|Enter name") (:placeholder |name)
              , show? on-finish! on-close!
        |confirm-actions-plugin $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            def confirm-actions-plugin $ impl-traits PluginNodeCursorStateTask %confirm-actions
          :examples $ []
        |drawer-actions-plugin $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            def drawer-actions-plugin $ impl-traits PluginNodeCursorState %drawer-actions
          :examples $ []
        |effect-fade $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
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
                          set! (.-transitionDuration card-style) |240ms
                          set! (.-transform card-style) "|scale(0.94) translate(0px,-20px)"
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
                    set! (.-transform card-style) "|scale(0.94) translate(0px,-20px)"
                    js/setTimeout
                      fn ()
                        set! (.-transitionDuration style) |240ms
                        set! (.-transitionDuration card-style) |240ms
                        set! (.-opacity style) 1
                        set! (.-transform card-style) "|scale(1) translate(0px,0px)"
                      , 10
                  , nil
          :examples $ []
        |effect-focus $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            defeffect effect-focus (query show?) (action el at-place?)
              case-default action nil $ :update
                when show? $ focus-element! query
          :examples $ []
        |effect-keydown $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            defeffect effect-keydown () (action el at?)
              case-default action nil
                :mount $ let
                    f $ fn (event)
                      if
                        = (.-key event) |Escape
                        let
                            new-event $ new js/MouseEvent (.-type event) event
                          .!dispatchEvent el new-event
                  js/window.addEventListener |keydown f
                  aset el |_listener f
                :unmount $ let
                    f $ aget el |_listener
                  js/window.removeEventListener |keydown f
                  aset el |_listener nil
          :examples $ []
        |effect-select $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            defeffect effect-select (query show?) (action el *local)
              case-default action nil $ :update
                when show? $ select-element! query
          :examples $ []
        |effect-slide $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
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
                          set! (.-transitionDuration card-style) |240ms
                          set! (.-transform card-style) "|translate(100%,0px)"
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
                    set! (.-transform card-style) "|translate(100%,0px)"
                    js/setTimeout
                      fn ()
                        set! (.-transitionDuration style) |240ms
                        set! (.-transitionDuration card-style) |240ms
                        set! (.-opacity style) 1
                        set! (.-transform card-style) "|translate(0px,0px)"
                      , 10
                  , nil
          :examples $ []
        |modal-actions-plugin $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            def modal-actions-plugin $ impl-traits PluginNodeCursorState %modal-actions
          :examples $ []
        |modal-menu-actions-plugin $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            def modal-menu-actions-plugin $ impl-traits PluginNodeCursorState %modal-menu-actions
          :examples $ []
        |prompt-actions-plugin $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            def prompt-actions-plugin $ impl-traits PluginNodeCursorStateTask %prompt-actions
          :examples $ []
        |style-clear $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            defstyle style-clear $ {}
              |& $ {} (:font-size 10) (:cursor :pointer)
                :color $ hsl 270 80 70
                :opacity 0.6
              |&:hover $ {} (:opacity 1)
          :examples $ []
        |style-drawer-backdrop $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            defstyle style-drawer-backdrop $ {}
              |& $ merge style/backdrop
                {} $ :padding 0
          :examples $ []
        |style-drawer-card $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            defstyle style-drawer-card $ {}
              |& $ merge style/card
                {} (:line-height |32px) (:height |100%) (:max-height |100vh) (:margin-right 0) (:border-radius |0px) (:max-width |50vw) (:width |24vw) (:min-width 360) (:box-shadow "|-2px 0px 24px 2px hsla(0,0%,0%,0.2)") (:transition-property |opacity,transform)
          :examples $ []
        |style-menu-item $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            defstyle style-menu-item $ {}
              |& $ {}
                :border-top $ str "|1px solid " (hsl 0 0 90)
                :padding "|0 16px"
                :cursor :pointer
                :white-space :nowrap
                :line-height |40px
              |&:hover $ {}
                :background-color $ hsl 0 0 97
          :examples $ []
        |style-modal-backdrop $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            defstyle style-modal-backdrop $ {} (|& style/backdrop)
          :examples $ []
        |style-modal-card $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            defstyle style-modal-card $ {}
              |& $ merge style/card
                {} (:line-height |32px) (:box-shadow "|0px 2px 24px 0px hsl(0,0%,0%,0.2)") (:transition-property |opacity,transform)
          :examples $ []
        |style-modal-title $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            defstyle style-modal-title $ {}
              |& $ {} (:padding |8px)
          :examples $ []
        |use-alert $ %{} :CodeEntry (:doc "||Alert dialog hook. Shows a simple message box. Returns a plugin object with .show method to display the alert.") (:schema :dynamic)
          :code $ quote
            defplugin use-alert (states options)
              let
                  cursor $ :cursor states
                  state $ either (:data states)
                    {} (:show? false)
                      :text $ :text options
                  on-read $ either (:on-read options)
                    fn (e d!)
                      d! cursor $ assoc state :show? false
                  node $ comp-alert-modal
                    assoc options :text $ :text state
                    :show? state
                    , on-read
                      fn (d!)
                        d! cursor $ assoc state :show? false
                %:: alert-actions-plugin :plugin node cursor state
          :examples $ []
            quote $ let
                alert-plugin $ use-alert (>> states :alert)
                  {} $ :text |demo
              button
                {} $ :on-click
                  fn (e d!) (.show alert-plugin d!)
                <> |Show
        |use-confirm $ %{} :CodeEntry (:doc "||Confirm dialog hook. Shows a dialog with confirm/cancel buttons. Returns a plugin object, call .show with a callback function that executes after confirmation.") (:schema :dynamic)
          :code $ quote
            defplugin use-confirm (states options)
              let
                  cursor $ :cursor states
                  state $ either (:data states)
                    {} (:show? false) (:text nil)
                  *next-confirm-task $ anchor-state (identity-path 'confirm)
                  node $ comp-confirm-modal
                    if
                      blank? $ :text state
                      , options $ assoc options :text (:text state)
                    :show? state
                    fn (e d!)
                      if (some? @*next-confirm-task) (@*next-confirm-task)
                      .set! *next-confirm-task nil
                    fn (d!)
                      d! cursor $ assoc state :show? false
                      .set! *next-confirm-task nil
                %:: confirm-actions-plugin :plugin node cursor state *next-confirm-task
          :examples $ []
            quote $ let
                confirm-plugin $ use-confirm (>> states :confirm)
                  {} $ :text "|确认删除？"
              button
                {} $ :on-click
                  fn (e d!)
                    .show confirm-plugin d! $ fn () (println |confirmed)
                <> |Delete
            quote $ let
                confirm-plugin $ use-confirm (>> states :confirm)
                  {} $ :text "|Default text"
              button
                {} (:class-name css/button)
                  :on-click $ fn (e d!)
                    .show-with-text confirm-plugin d! "|Confirm with dynamic text?" $ fn () (println |Confirmed!)
                <> "|Show with text"
        |use-drawer $ %{} :CodeEntry (:doc "||Drawer hook. Shows a panel sliding from the side. Use :render function in options to customize content. Supports :style for width and other styles.") (:schema :dynamic)
          :code $ quote
            defn use-drawer (states options)
              let
                  cursor $ :cursor states
                  state $ either (:data states)
                    {} $ :show? false
                  node $ comp-drawer options (:show? state)
                    fn (d!)
                      d! cursor $ assoc state :show? false
                %:: drawer-actions-plugin :plugin node cursor state
          :examples $ []
            quote $ let
                drawer-plugin $ use-drawer (>> states :drawer)
                  {} (:title |Settings)
                    :style $ {} (:width 400)
                    :render $ fn (on-close)
                      div ({}) (<> "|Settings content")
              button
                {} $ :on-click
                  fn (e d!) (.show drawer-plugin d!)
                <> "|Open Drawer"
        |use-modal $ %{} :CodeEntry (:doc "||Modal dialog hook. Shows a modal with custom content. Use :render function in options to customize content. Returns a plugin object.") (:schema :dynamic)
          :code $ quote
            defn use-modal (states options)
              let
                  cursor $ :cursor states
                  state $ either (:data states)
                    {} $ :show? false
                  node $ comp-modal options (:show? state)
                    fn (d!)
                      d! cursor $ assoc state :show? false
                %:: modal-actions-plugin :plugin node cursor state
          :examples $ []
            quote $ let
                modal-plugin $ use-modal (>> states :modal)
                  {} (:title |Demo)
                    :render $ fn (on-close)
                      div ({}) (<> |Content)
              button
                {} $ :on-click
                  fn (e d!) (.show modal-plugin d!)
                <> |Open
        |use-modal-menu $ %{} :CodeEntry (:doc "||Modal menu hook. Shows a modal dialog with a list of options. Define options via :items and handle selection via :on-result in options.") (:schema :dynamic)
          :code $ quote
            defn use-modal-menu (states options)
              let
                  cursor $ :cursor states
                  state $ either (:data states)
                    {} $ :show? false
                  node $ comp-modal-menu options (:show? state)
                    fn (d!)
                      d! cursor $ assoc state :show? false
                    fn (result d!)
                      (:on-result options) result d!
                      d! cursor $ assoc state :show? false
                %:: modal-menu-actions-plugin :plugin node cursor state
          :examples $ []
            quote $ let
                menu-plugin $ use-modal-menu (>> states :menu)
                  {} (:title "|选择")
                    :items $ [] (:: :item |a |A) (:: :item |b |B)
                    :on-result $ fn (result d!) (println |selected: result)
              button
                {} $ :on-click
                  fn (e d!) (.show menu-plugin d!)
                <> |Menu
        |use-prompt $ %{} :CodeEntry (:doc "||Prompt dialog hook. Shows a dialog with text input. Returns a plugin object, call .show with a callback function to receive user input text.") (:schema :dynamic)
          :code $ quote
            defplugin use-prompt (states options)
              let
                  cursor $ :cursor states
                  state $ either (:data states)
                    {} (:show? false) (:failure nil)
                  *next-prompt-task $ anchor-state (identity-path 'prompt)
                  node $ comp-prompt-modal (>> states :modal) options (:show? state)
                    fn (text d!)
                      if (some? @*next-prompt-task) (@*next-prompt-task text)
                      .set! *next-prompt-task nil
                      d! cursor $ assoc state :show? false
                    fn (d!)
                      d! cursor $ assoc state :show? false
                      .set! *next-prompt-task nil
                %:: prompt-actions-plugin :plugin node cursor state *next-prompt-task
          :examples $ []
            quote $ let
                prompt-plugin $ use-prompt (>> states :prompt)
                  {} (:text "|请输入名称") (:placeholder |name)
              button
                {} $ :on-click
                  fn (e d!)
                    .show prompt-plugin d! $ fn (text) (println |got: text)
                <> |Input
      :ns $ %{} :NsEntry (:doc |)
        :code $ quote
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
            memof.anchor :refer $ anchor-state identity-path
    |respo-alerts.main $ %{} :FileEntry
      :defs $ {}
        |*reel $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            defatom *reel $ -> reel-schema/reel (assoc :base schema/store) (assoc :store schema/store)
          :examples $ []
        |dispatch! $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            defn dispatch! (op)
              do
                when
                  and config/dev? $ not= :states op
                  js/console.log |Dispatch: op
                reset! *reel $ reel-updater updater @*reel op
          :examples $ []
        |main! $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            defn main! ()
              println "|Running mode:" $ if config/dev? |dev |release
              if config/dev? $ load-console-formatter!
              render-app!
              add-watch *reel :changes $ fn (reel prev) (render-app!)
              listen-devtools! |a dispatch!
              ; js/window.addEventListener |beforeunload $ fn (event) (persist-storage!)
              ; js/setInterval persist-storage! 60000
              ; let
                (raw (js/localStorage.getItem (:storage-key config/site)))
                when (some? raw)
                  dispatch! :hydrate-storage $ parse-cirru-edn raw
              println "|App started."
          :examples $ []
        |mount-target $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            def mount-target $ js/document.querySelector |.app
          :examples $ []
        |persist-storage! $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            defn persist-storage! (? e)
              js/localStorage.setItem (:storage-key config/site)
                format-cirru-edn $ :store @*reel
          :examples $ []
        |reload! $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            defn reload! () $ if (nil? build-errors)
              do (remove-watch *reel :changes) (clear-cache!)
                add-watch *reel :changes $ fn (reel prev) (render-app!)
                reset! *reel $ refresh-reel @*reel schema/store updater
                hud! |ok~ |Ok
              hud! |error build-errors
          :examples $ []
        |render-app! $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            defn render-app! () $ render! mount-target (comp-container @*reel) dispatch!
          :examples $ []
      :ns $ %{} :NsEntry (:doc |)
        :code $ quote
          ns respo-alerts.main $ :require
            respo.core :refer $ render! clear-cache! realize-ssr!
            respo-alerts.comp.container :refer $ comp-container
            respo-alerts.updater :refer $ updater
            respo-alerts.schema :as schema
            reel.util :refer $ listen-devtools!
            reel.core :refer $ reel-updater refresh-reel
            reel.schema :as reel-schema
            respo-alerts.config :as config
            |./calcit.build-errors :default build-errors
            |bottom-tip :default hud!
    |respo-alerts.schema $ %{} :FileEntry
      :defs $ {}
        |confirm-button-name $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote (def confirm-button-name |respo-confirm-button)
          :examples $ []
        |input-box-name $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote (def input-box-name |respo-prompt-input)
          :examples $ []
        |store $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            def store $ {}
              :states $ {}
              :content |
          :examples $ []
      :ns $ %{} :NsEntry (:doc |)
        :code $ quote (ns respo-alerts.schema)
    |respo-alerts.style $ %{} :FileEntry
      :defs $ {}
        |backdrop $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            def backdrop $ {}
              :background-color $ hsl 0 30 10 0.6
              :position :fixed
              :z-index |999
              :padding 16
          :examples $ []
        |button $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            def button $ merge ui/button
              {} (:border-radius |4px) (:background-color :white)
                :border-color $ hsl 240 60 90
          :examples $ []
        |card $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            def card $ {}
              :background-color $ hsl 0 0 100
              :max-width |600px
              :width |100%
              :max-height |80vh
              :overflow :auto
              :border-radius |3px
              :color $ hsl 0 0 0
              :margin :auto
              :padding 16
          :examples $ []
      :ns $ %{} :NsEntry (:doc |)
        :code $ quote
          ns respo-alerts.style $ :require
            respo.util.format :refer $ hsl
            respo-ui.core :as ui
    |respo-alerts.trigger $ %{} :FileEntry
      :defs $ {}
        |comp-trigger $ %{} :CodeEntry (:doc "||Trigger component. Wraps an element with visual feedback when active. Uses :trigger-style and :trigger-active-style from options.") (:schema :dynamic)
          :code $ quote
            defcomp comp-trigger (show? el ? options)
              div
                {} $ :class-name style-trigger-container
                , el $ div
                  {}
                    :class-name $ str-spaced style-trigger (if show? style-trigger-active)
                    :style $ merge (get options :trigger-style)
                      if show? $ get options :trigger-active-style
          :examples $ []
            quote $ comp-trigger show?
              button
                {} $ :on-click on-click
                <> "|Click me"
              {}
                :trigger-style $ {} (:color |blue)
                :trigger-active-style $ {} (:color |red)
        |style-trigger $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            defstyle style-trigger $ {}
              |& $ {} (:border-radius |50%) (:position :absolute) (:transform "|translate(-50%,-50%)") (:top |50%) (:left |50%) (:width 0) (:height 0) (:transition-duration |300ms) (:transition-delay |100ms) (:pointer-events :none) (:z-index |900) (:opacity 1)
                :background $ str "|radial-gradient(" (hsl 0 0 70 0.8) "|0% ," (hsl 0 0 60 0.0) "| 50%)"
          :examples $ []
        |style-trigger-active $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            defstyle style-trigger-active $ {}
              |& $ {} (:width 2000) (:height 2000) (:opacity 0.3) (:transition-delay |0ms)
          :examples $ []
        |style-trigger-container $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            defstyle style-trigger-container $ {}
              |& $ {} (:display :inline-block) (:position :relative)
          :examples $ []
      :ns $ %{} :NsEntry (:doc |)
        :code $ quote
          ns respo-alerts.trigger $ :require
            respo.core :refer $ defcomp defplugin list-> <> >> div button textarea span input a defeffect
            respo-ui.css :as css
            respo.util.format :refer $ hsl
            respo.css :refer $ defstyle
    |respo-alerts.updater $ %{} :FileEntry
      :defs $ {}
        |updater $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            defn updater (store op op-id op-time)
              tag-match op
                (:states cursor s) (update-states store cursor s)
                (:content c) (assoc store :content c)
                (:hydrate-storage d) d
                _ $ do (js/console.warn "|Unknown op:" op) store
          :examples $ []
      :ns $ %{} :NsEntry (:doc |)
        :code $ quote
          ns respo-alerts.updater $ :require
            respo.cursor :refer $ update-states
            respo-alerts.config :refer $ dev?
    |respo-alerts.util $ %{} :FileEntry
      :defs $ {}
        |focus-element! $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            defn focus-element! (query)
              if-let
                target $ js/document.querySelector query
                .!focus target
          :examples $ []
        |select-element! $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            defn select-element! (query)
              let
                  target $ js/document.querySelector query
                if (some? target) (.!select target)
          :examples $ []
      :ns $ %{} :NsEntry (:doc |)
        :code $ quote (ns respo-alerts.util)
