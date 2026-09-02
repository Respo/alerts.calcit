
{} (:about "|Machine-generated snapshot. Do not edit directly — changes will be overwritten. Use `calcit query` to inspect and `calcit edit`/`calcit tree` to modify. Run `calcit docs agents --full` first. Manual edits must follow format and schema conventions, then run `calcit edit format`.") (:package |respo-alerts)
  :entries $ {}
    :default $ {} (:description |) (:init-fn 'respo-alerts.main/main!) (:mode :js) (:reload-fn 'respo-alerts.main/reload!)
      :feature-policy $ {}
      :modules $ [] |respo.calcit/ |respo-ui.calcit/ |reel.calcit/ |js-ffi/
      :type-slots $ {}
  :files $ {}
    'respo-alerts.comp.container $ %{} 'FileEntry
      :defs $ {}
        'comp-container $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defcomp comp-container (reel)
              let
                  store $ read-field reel :store
                  states $ read-field store :states
                  state $ either (read-field states :data)
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
          :schema $ :: 'Dynamic
        'comp-controlled-modals $ %{} 'CodeEntry (:doc |)
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
          :schema $ :: 'Dynamic
        'comp-demo-trigger $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defcomp comp-demo-trigger (states)
              let
                  cursor $ read-field states :cursor
                  state $ either (read-field states :data)
                    {} $ :visible? false
                div ({})
                  div ({}) (<> |Trigger)
                  div ({})
                    comp-trigger (read-field state :visible?)
                      button $ {} (:inner-text |Toggle) (:class-name css/button)
                        :on-click $ fn (e d!)
                          d! cursor $ update state :visible? not
          :examples $ []
          :schema $ :: 'Dynamic
        'comp-hooks-usages $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defcomp comp-hooks-usages (states)
              let
                  alert-plugin $ use-alert (>> states :alert)
                    {} $ :title |demo
                  alert-text-plugin $ use-alert (>> states :alert-text)
                    {} $ :title |demo
                  confirm-plugin $ use-confirm (>> states :confirm)
                    {} $ :title |demo
                  confirm-prompt-plugin $ use-prompt (>> states :confirm-prompt)
                    {} (:text "|Input confirm text") (:placeholder "|Confirm text")
                      :validator $ fn (text)
                        if (blank? text) "|Please enter text" |
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
                      :validator validate-cirru-source
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
                        .show confirm-prompt-plugin d! $ fn (text)
                          .show-with-text confirm-plugin d! (str "|Confirmed: " text)
                            fn () $ println |after-confirmed
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
                  .render confirm-prompt-plugin
                  .render prompt-plugin
                  .render prompt-multilines-plugin
                  .render prompt-validation-plugin
                  .render alert-text-plugin
          :examples $ []
          :schema $ :: 'Dynamic
        'style-logo $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defstyle style-logo $ {}
              |& $ {} (:width 120)
          :examples $ []
          :schema $ :: 'Dynamic
        'validate-cirru-source $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn validate-cirru-source (source)
              try
                let
                    forms $ parse-cirru-list source
                  if (empty? forms) "|Expected at least one Cirru form" |
                fn (error) (str error)
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'String)
              :args $ [] 'String
          :tests $ []
            %{} 'TestEntry (:name |rejects-empty-and-invalid-parse-results)
              :code $ quote
                do
                  assert= | $ validate-cirru-source |a
                  assert= false $ blank?
                    validate-cirru-source $ char-from-code 40
                  assert= false $ blank?
                    validate-cirru-source $ char-from-code 34
      :ns $ %{} 'NsEntry (:doc |)
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
            respo-alerts.util :refer $ read-field
    'respo-alerts.config $ %{} 'FileEntry
      :defs $ {}
        'dev? $ %{} 'CodeEntry (:doc |)
          :code $ quote
            def dev? $ = |dev
              option:unwrap-or (get-env |mode) |release
          :examples $ []
          :schema $ :: 'Bool
        'site $ %{} 'CodeEntry (:doc |)
          :code $ quote
            def site $ {} (:dev-ui |http://localhost:8100/main-fonts.css) (:release-ui |http://cdn.tiye.me/favored-fonts/main-fonts.css) (:cdn-url |http://cdn.tiye.me/calcit-workflow/) (:title |Alerts) (:icon |http://cdn.tiye.me/logo/respo.png) (:storage-key |respo-alerts)
          :examples $ []
          :schema $ :: 'Map
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote (ns respo-alerts.config)
    'respo-alerts.core $ %{} 'FileEntry
      :defs $ {}
        '%alert-actions $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defimpl %alert-actions AlertActions
              .render $ fn (self)
                hint-fn $ {}
                  :args $ [] 'Dynamic
                  :return 'Dynamic
                match self $
                  :plugin node cursor state
                  , node
              .show $ fn (self d! ? text)
                hint-fn $ {}
                  :args $ [] 'Dynamic 'Fn (:: 'Optional 'String)
                  :return 'Dynamic
                match self $
                  :plugin node cursor state
                  if (some? text)
                    d! cursor $ -> state (assoc :show? true) (assoc :text text)
                    d! cursor $ assoc state :show? true
              .close $ fn (self d!)
                hint-fn $ {}
                  :args $ [] 'Dynamic 'Fn
                  :return 'Dynamic
                match self $
                  :plugin node cursor state
                  d! cursor $ assoc state :show? false
              .show? $ fn (self)
                hint-fn $ {}
                  :args $ [] 'Dynamic
                  :return 'Bool
                match self $
                  :plugin node cursor state
                  read-field state :show?
          :examples $ []
          :schema $ :: 'Impl
        '%confirm-actions $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defimpl %confirm-actions ConfirmActions
              .render $ fn (self)
                hint-fn $ {}
                  :args $ [] 'Dynamic
                  :return 'Dynamic
                match self $
                  :plugin node cursor state
                  , node
              .show $ fn (self d! next-task)
                hint-fn $ {}
                  :args $ [] 'Dynamic 'Fn 'Fn
                  :return 'Dynamic
                match self $
                  :plugin node cursor state
                  do
                    store-prompt-task! cursor $ fn (ignored) (next-task)
                    d! cursor $ -> state (assoc :show? true) (assoc :text |)
              .show-with-text $ fn (self d! text next-task)
                hint-fn $ {}
                  :args $ [] 'Dynamic 'Fn 'String 'Fn
                  :return 'Dynamic
                match self $
                  :plugin node cursor state
                  do
                    store-prompt-task! cursor $ fn (ignored) (next-task)
                    d! cursor $ -> state (assoc :show? true) (assoc :text text)
              .close $ fn (self d!)
                hint-fn $ {}
                  :args $ [] 'Dynamic 'Fn
                  :return 'Dynamic
                match self $
                  :plugin node cursor state
                  do (clear-prompt-task! cursor)
                    d! cursor $ assoc state :show? false
              .show? $ fn (self)
                hint-fn $ {}
                  :args $ [] 'Dynamic
                  :return 'Bool
                match self $
                  :plugin node cursor state
                  read-field state :show?
          :examples $ []
          :schema $ :: 'Impl
        '%drawer-actions $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defimpl %drawer-actions DrawerActions
              .render $ fn (self)
                hint-fn $ {}
                  :args $ [] 'Dynamic
                  :return 'Dynamic
                match self $
                  :plugin node cursor state
                  , node
              .show $ fn (self d!)
                hint-fn $ {}
                  :args $ [] 'Dynamic 'Fn
                  :return 'Dynamic
                match self $
                  :plugin node cursor state
                  d! cursor $ assoc state :show? true
              .close $ fn (self d!)
                hint-fn $ {}
                  :args $ [] 'Dynamic 'Fn
                  :return 'Dynamic
                match self $
                  :plugin node cursor state
                  d! cursor $ assoc state :show? false
              .show? $ fn (self)
                hint-fn $ {}
                  :args $ [] 'Dynamic
                  :return 'Bool
                match self $
                  :plugin node cursor state
                  read-field state :show?
          :examples $ []
          :schema $ :: 'Impl
        '%modal-actions $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defimpl %modal-actions ModalActions
              .render $ fn (self)
                hint-fn $ {}
                  :args $ [] 'Dynamic
                  :return 'Dynamic
                match self $
                  :plugin node cursor state
                  , node
              .show $ fn (self d!)
                hint-fn $ {}
                  :args $ [] 'Dynamic 'Fn
                  :return 'Dynamic
                match self $
                  :plugin node cursor state
                  d! cursor $ assoc state :show? true
              .close $ fn (self d!)
                hint-fn $ {}
                  :args $ [] 'Dynamic 'Fn
                  :return 'Dynamic
                match self $
                  :plugin node cursor state
                  d! cursor $ assoc state :show? false
              .show? $ fn (self)
                hint-fn $ {}
                  :args $ [] 'Dynamic
                  :return 'Bool
                match self $
                  :plugin node cursor state
                  read-field state :show?
          :examples $ []
          :schema $ :: 'Impl
        '%modal-menu-actions $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defimpl %modal-menu-actions ModalMenuActions
              .render $ fn (self)
                hint-fn $ {}
                  :args $ [] 'Dynamic
                  :return 'Dynamic
                match self $
                  :plugin node cursor state
                  , node
              .show $ fn (self d!)
                hint-fn $ {}
                  :args $ [] 'Dynamic 'Fn
                  :return 'Dynamic
                match self $
                  :plugin node cursor state
                  d! cursor $ assoc state :show? true
              .close $ fn (self d!)
                hint-fn $ {}
                  :args $ [] 'Dynamic 'Fn
                  :return 'Dynamic
                match self $
                  :plugin node cursor state
                  d! cursor $ assoc state :show? false
              .show? $ fn (self)
                hint-fn $ {}
                  :args $ [] 'Dynamic
                  :return 'Bool
                match self $
                  :plugin node cursor state
                  read-field state :show?
          :examples $ []
          :schema $ :: 'Impl
        '%prompt-actions $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defimpl %prompt-actions PromptActions
              .render $ fn (self)
                hint-fn $ {}
                  :args $ [] 'Dynamic
                  :return 'Dynamic
                match self $
                  :plugin node cursor state
                  , node
              .show $ fn (self d! next-task)
                hint-fn $ {}
                  :args $ [] 'Dynamic 'Fn 'Fn
                  :return 'Dynamic
                match self $
                  :plugin node cursor state
                  do (store-prompt-task! cursor next-task)
                    d! cursor $ assoc state :show? true
              .close $ fn (self d!)
                hint-fn $ {}
                  :args $ [] 'Dynamic 'Fn
                  :return 'Dynamic
                match self $
                  :plugin node cursor state
                  do (clear-prompt-task! cursor)
                    d! cursor $ assoc state :show? false
              .show? $ fn (self)
                hint-fn $ {}
                  :args $ [] 'Dynamic
                  :return 'Bool
                match self $
                  :plugin node cursor state
                  read-field state :show?
          :examples $ []
          :schema $ :: 'Impl
          :tests $ []
            %{} 'TestEntry (:name |stores-callback-across-render)
              :code $ quote
                let
                    cursor $ [] :action-test
                    plugin $ %:: prompt-actions-plugin :plugin (%:: _ :node) cursor ({})
                    next-task $ fn (text) &unit
                    d! $ fn (cursor state) &unit
                  do (.show plugin d! next-task)
                    is $ option:some? (get @*prompt-tasks cursor)
                    clear-prompt-task! cursor
              :tags $ #{} :regression :unit
        '*prompt-tasks $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defatom *prompt-tasks $ {}
          :examples $ []
          :schema $ :: 'Ref
            :: 'Map 'List $ :: 'Fn
              {} (:return 'Unit)
                :args $ [] 'String
        'AlertActions $ %{} 'CodeEntry (:doc |)
          :code $ quote
            deftrait AlertActions (.render :fn) (.show :fn) (.close :fn) (.show? :fn)
          :examples $ []
          :schema $ :: 'Trait
        'ConfirmActions $ %{} 'CodeEntry (:doc |)
          :code $ quote
            deftrait ConfirmActions (.render :fn) (.show :fn) (.show-with-text :fn) (.close :fn) (.show? :fn)
          :examples $ []
          :schema $ :: 'Trait
        'DrawerActions $ %{} 'CodeEntry (:doc |)
          :code $ quote
            deftrait DrawerActions (.render :fn) (.show :fn) (.close :fn) (.show? :fn)
          :examples $ []
          :schema $ :: 'Trait
        'ModalActions $ %{} 'CodeEntry (:doc |)
          :code $ quote
            deftrait ModalActions (.render :fn) (.show :fn) (.close :fn) (.show? :fn)
          :examples $ []
          :schema $ :: 'Trait
        'ModalMenuActions $ %{} 'CodeEntry (:doc |)
          :code $ quote
            deftrait ModalMenuActions (.render :fn) (.show :fn) (.close :fn) (.show? :fn)
          :examples $ []
          :schema $ :: 'Trait
        'PluginNodeCursorState $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defenum PluginNodeCursorState $ :plugin 'Enum 'List 'Map
          :examples $ []
          :schema $ :: 'Enum
        'PromptActions $ %{} 'CodeEntry (:doc |)
          :code $ quote
            deftrait PromptActions (.render :fn) (.show :fn) (.close :fn) (.show? :fn)
          :examples $ []
          :schema $ :: 'Trait
        'PromptEvent $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defstruct PromptEvent (:text 'String) (:keycode 'Number) (:meta? 'Bool) (:ctrl? 'Bool)
          :examples $ []
          :schema $ :: 'StructDef
        'PromptKeyAction $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defenum PromptKeyAction (:submit) (:close) (:ignore)
          :examples $ []
          :schema $ :: 'EnumDef
        'PromptPluginNodeCursorState $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defenum PromptPluginNodeCursorState $ :plugin 'Enum 'List 'Map
          :examples $ []
          :schema $ :: 'Enum
        'alert-actions-plugin $ %{} 'CodeEntry (:doc |)
          :code $ quote
            def alert-actions-plugin $ impl-traits PluginNodeCursorState %alert-actions
          :examples $ []
          :schema $ :: 'respo-alerts.core/PluginNodeCursorState
        'clear-prompt-task! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn clear-prompt-task! (cursor)
              do
                reset! *prompt-tasks $ dissoc @*prompt-tasks cursor
                , &unit
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Unit)
              :args $ [] 'List
        'comp-alert-modal $ %{} 'CodeEntry (:doc "||Alert modal component. Shows a simple message dialog with a confirm button. Used internally by use-alert hook.")
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
                      :class-name $ str-spaced css/fullscreen css/center style-modal-backdrop (read-field options :backdrop-class)
                      :style $ read-field options :backdrop-style
                      :on-click $ fn (e d!)
                        let
                            event $ .-event e
                          if (js-present? event) (.!stopPropagation event) %none
                          on-close! d!
                          on-read! e d!
                    div
                      {}
                        :class-name $ str-spaced style-modal-card css/global css/column (read-field options :card-class)
                        :style $ read-field options :card-style
                        :on-click $ fn (e d!) &unit
                      div ({})
                        <> $ either (read-field options :text) |Alert!
                      =< nil 8
                      div
                        {} $ :class-name css/row-parted
                        span $ {}
                        button
                          {}
                            :class-name $ str-spaced css/button schema/confirm-button-name (read-field options :confirm-class)
                            :style $ read-field options :confirm-style
                            :on-click $ fn (e d!) (on-close! d!) (on-read! e d!)
                          <> $ either (read-field options :confirm-text) |Read
                    comp-esc-listener show? on-close!
          :examples $ []
            quote $ comp-alert-modal
              {} $ :text "|Hello World"
              , show? on-read! on-close!
          :schema $ :: 'Dynamic
        'comp-confirm-modal $ %{} 'CodeEntry (:doc "||Confirm modal component. Shows a dialog with confirm and cancel buttons. Used internally by use-confirm hook.")
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
                      :class-name $ str-spaced css/fullscreen css/center style-modal-backdrop (read-field options :backdrop-class)
                      :style $ read-field options :backdrop-style
                      :on-click $ fn (e d!) (on-close! d!)
                    div
                      {}
                        :class-name $ str-spaced css/global css/column style-modal-card (read-field options :card-class)
                        :style $ read-field options :card-style
                        :on-click $ fn (e d!) &unit
                      div ({})
                        <> $ either (read-field options :text) |Confirm?
                      =< nil 8
                      div
                        {} $ :class-name css/row-parted
                        span $ {}
                        button
                          {}
                            :class-name $ str-spaced css/button schema/confirm-button-name (read-field options :confirm-class)
                            :on-click $ fn (e d!) (on-confirm! e d!) (on-close! d!)
                          <> $ either (read-field options :button-text) |Confirm
                    comp-esc-listener show? on-close!
          :examples $ []
            quote $ comp-confirm-modal
              {} $ :text "|Are you sure?"
              , show? on-confirm! on-close!
          :schema $ :: 'Dynamic
        'comp-drawer $ %{} 'CodeEntry (:doc "||Drawer component. Renders a sliding panel from the side with custom content via :render function in options.")
          :code $ quote
            defcomp comp-drawer (options show? on-close)
              [] (effect-slide show?)
                div
                  {} $ :style
                    merge
                      {} $ :position :absolute
                      read-field options :container-style
                  if show? $ div
                    {}
                      :class-name $ str-spaced css/fullscreen style-drawer-backdrop (read-field options :backdrop-class)
                      :style $ read-field options :backdrop-style
                      :on-click $ fn (e d!)
                        let
                            event $ .-event e
                          if (js-present? event) (.!stopPropagation event) %none
                          on-close d!
                    div
                      {}
                        :class-name $ str-spaced css/global css/column style-drawer-card (read-field options :card-class)
                        :style $ merge
                          {} $ :padding 0
                          read-field options :style
                        :on-click $ fn (e d!) &unit
                      let
                          title $ read-field options :title
                        if (some? title)
                          div
                            {} $ :class-name (str-spaced css/center css/font-fancy! style-modal-title)
                            <> title
                      cond
                          some? $ read-field options :render
                          (read-field options :render) on-close
                        (some? (read-field options :render-body))
                          (read-field options :render-body) on-close
                        true "|TODO render body"
                    comp-esc-listener show? on-close
          :examples $ []
            quote $ comp-drawer
              {} (:title |Settings)
                :render $ fn (on-close)
                  div ({}) (<> |Content)
              , show? on-close
          :schema $ :: 'Dynamic
        'comp-esc-listener $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defcomp comp-esc-listener (show? on-close!)
              [] (effect-keydown)
                div $ {}
                  :style $ {} (:position :absolute)
                  :on-keydown $ fn (e d!) (on-close! d!)
          :examples $ []
          :schema $ :: 'Dynamic
        'comp-modal $ %{} 'CodeEntry (:doc "||Modal component. Renders a modal dialog with custom content via :render function in options.")
          :code $ quote
            defcomp comp-modal (options show? on-close)
              [] (effect-fade show?)
                div
                  {} $ :style
                    merge
                      {} $ :position :absolute
                      read-field options :container-style
                  if show? $ div
                    {}
                      :class-name $ str-spaced css/fullscreen css/center style-modal-backdrop (read-field options :backdrop-class)
                      :style $ read-field options :backdrop-style
                      :on-click $ fn (e d!)
                        let
                            event $ .-event e
                          if (js-present? event) (.!stopPropagation event) %none
                          on-close d!
                    div
                      {}
                        :class-name $ str-spaced css/global css/column style-modal-card (read-field options :card-class)
                        :style $ merge
                          {} $ :padding 0
                          read-field options :style
                          read-field options :card-style
                        :on-click $ fn (e d!) &unit
                      let
                          title $ read-field options :title
                        if (some? title)
                          div
                            {} $ :class-name (str-spaced css/center css/font-fancy! style-modal-title)
                            <> title
                      cond
                          some? $ read-field options :render
                          (read-field options :render) on-close
                        (some? (read-field options :render-body))
                          (read-field options :render-body) on-close
                        true "|TODO render body"
                    comp-esc-listener show? on-close
          :examples $ []
            quote $ comp-modal
              {} (:title |Dialog)
                :render $ fn (on-close)
                  div ({}) (<> |Content)
              , show? on-close
          :schema $ :: 'Dynamic
        'comp-modal-menu $ %{} 'CodeEntry (:doc "||Modal menu component. Shows a modal dialog with a list of selectable items. Define items via :items in options.")
          :code $ quote
            defcomp comp-modal-menu (options show? on-close! on-select!)
              [] (effect-fade show?)
                div ({})
                  if show? $ div
                    {}
                      :class-name $ str-spaced css/fullscreen css/center style-modal-backdrop (read-field options :backdrop-class)
                      :style $ read-field options :backdrop-style
                      :on-click $ fn (e d!)
                        let
                            event $ .-event e
                          if (js-present? event) (.!stopPropagation event) %none
                          on-close! d!
                    div
                      {}
                        :class-name $ str-spaced css/global css/column style-modal-card (read-field options :card-class)
                        :style $ merge
                          {} $ :padding 0
                          read-field options :style
                        :on-click $ fn (e d!) &unit
                      let
                          title $ read-field options :title
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
                        -> (read-field options :items)
                          map $ fn (info)
                            let
                                item $ cond
                                    enum? info
                                    , info
                                  (map? info)
                                    :: :item (&map:get info :value) (&map:get info :display)
                                  true $ raise "|Unknown menu item"
                              match item $
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
          :schema $ :: 'Dynamic
        'comp-prompt-modal $ %{} 'CodeEntry (:doc "||Prompt modal component. Shows a dialog with text input field and validation. Used internally by use-prompt hook.")
          :code $ quote
            defcomp comp-prompt-modal (states options show? on-finish! on-close!)
              let
                  initial-text $ either (read-field options :initial) |
                  cursor $ read-field states :cursor
                  state $ either (read-field states :data)
                    {} (:text initial-text) (:failure |)
                  text $ either (read-field state :text) initial-text
                  check-submit! $ fn (d!)
                    let
                        validator $ read-field options :validator
                        result $ if (fn? validator)
                          prompt-validation-error $ validator text
                          , |
                      if
                        not $ blank? result
                        d! cursor $ assoc state :failure result
                        do (on-finish! text d!) (on-close! d!)
                          d! cursor $ -> state (assoc :text |) (assoc :failure |)
                []
                  effect-select (str |. schema/input-box-name) show?
                  effect-fade show?
                  div
                    {} $ :style
                      {} $ :position :absolute
                    if show? $ div
                      {}
                        :class-name $ str-spaced css/fullscreen css/center style-modal-backdrop (read-field options :backdrop-class)
                        :style $ merge
                          {} $ :line-height |32px
                          read-field options :backdrop-style
                        :on-click $ fn (e d!) (on-close! d!)
                          d! cursor $ -> state (assoc :text |) (assoc :failure |)
                      div
                        {}
                          :class-name $ str-spaced css/global css/column style-modal-card (read-field options :card-class)
                          :style $ read-field options :card-style
                          :on-click $ fn (e d!) &unit
                        div ({})
                          <> $ either (read-field options :text) "|Type in text"
                        =< nil 8
                        let
                            props $ respo-schema/DomProps :value text :on-input
                              fn (e d!)
                                d! cursor $ assoc state :text (prompt-event-text e)
                              , :on-keydown
                                fn (e d!)
                                  let
                                      event-info $ unsafe-coerce (read-prompt-event e) 'respo-alerts.core/PromptEvent
                                      action $ unsafe-coerce
                                        prompt-key-action event-info $ read-field options :multiline?
                                        , 'respo-alerts.core/PromptKeyAction
                                    match action
                                      (:submit) (check-submit! d!)
                                      (:close)
                                        do (on-close! d!)
                                          d! cursor $ -> state (assoc :text |) (assoc :failure |)
                                      (:ignore) &unit
                                , :placeholder
                                  either (read-field options :placeholder) |
                          if (read-field options :multiline?)
                            textarea $ struct-with props
                              :class-name $ str-spaced schema/input-box-name css/textarea (read-field options :input-class)
                              :style $ merge
                                {} (:width |100%) (:min-height 120) (:max-height |50vh)
                                read-field options :input-style
                            input $ struct-with props
                              :class-name $ str-spaced schema/input-box-name css/input (read-field options :input-class)
                              :style $ merge
                                {} $ :width |100%
                                read-field options :input-style
                        =< nil 16
                        div
                          {} $ :class-name css/row-parted
                          let
                              failure $ either (read-field state :failure) |
                            if
                              not $ blank? failure
                              span $ {}
                                :style $ merge ui/flex
                                  {} (:color :red) (:line-height |20px)
                                :inner-text failure
                              span $ {}
                          button
                            {}
                              :class-name $ str-spaced css/button (read-field options :confirm-class)
                              :on-click $ fn (e d!) (check-submit! d!)
                            <> $ either (read-field options :button-text) |Finish
                      comp-esc-listener show? on-close!
          :examples $ []
            quote $ comp-prompt-modal states
              {} (:text "|Enter name") (:placeholder |name)
              , show? on-finish! on-close!
          :schema $ :: 'Dynamic
        'confirm-actions-plugin $ %{} 'CodeEntry (:doc |)
          :code $ quote
            def confirm-actions-plugin $ impl-traits PluginNodeCursorState %confirm-actions
          :examples $ []
          :schema $ :: 'respo-alerts.core/PluginNodeCursorState
        'drawer-actions-plugin $ %{} 'CodeEntry (:doc |)
          :code $ quote
            def drawer-actions-plugin $ impl-traits PluginNodeCursorState %drawer-actions
          :examples $ []
          :schema $ :: 'respo-alerts.core/PluginNodeCursorState
        'effect-fade $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defeffect effect-fade (show?) (action el at-place?)
              case-default action nil
                :before-update $ if show?
                  if
                    js-present? $ .-firstElementChild el
                    let
                        target $ unsafe-coerce (.-firstElementChild el) 'JsObject
                        cloned $ unsafe-coerce (.!cloneNode target true) 'JsObject
                        style $ unsafe-coerce (.-style cloned) 'JsObject
                        card-style $ unsafe-coerce
                          .-style $ unsafe-coerce (.-firstElementChild cloned) 'JsObject
                          , 'JsObject
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
                  , nil
                :update $ if show?
                  let
                      target $ unsafe-coerce (.-firstElementChild el) 'JsObject
                      card-style $ unsafe-coerce
                        .-style $ unsafe-coerce (.-firstElementChild target) 'JsObject
                        , 'JsObject
                      style $ unsafe-coerce (.-style target) 'JsObject
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
          :schema $ :: 'Fn
            {} (:return 'Dynamic)
              :args $ [] 'Dynamic
              :features $ #{} :js-ffi
        'effect-focus $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defeffect effect-focus (query show?) (action el at-place?)
              case-default action nil $ :update
                when show? $ focus-element! query
          :examples $ []
          :schema $ :: 'Dynamic
        'effect-keydown $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defeffect effect-keydown () (action el at?)
              case-default action nil
                :mount $ let
                    f $ fn (event)
                      if
                        =
                          .-key $ assert-type event 'respo.dom/DomKeyboardEvent
                          , |Escape
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
          :schema $ :: 'Fn
            {} (:return 'Dynamic)
              :args $ []
              :features $ #{} :js-ffi
        'effect-select $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defeffect effect-select (query show?) (action el *local)
              case-default action nil $ :update
                when show? $ select-element! query
          :examples $ []
          :schema $ :: 'Dynamic
        'effect-slide $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defeffect effect-slide (show?) (action el at-place?)
              case-default action nil
                :before-update $ if show?
                  if
                    js-present? $ .-firstElementChild el
                    let
                        target $ unsafe-coerce (.-firstElementChild el) 'JsObject
                        cloned $ unsafe-coerce (.!cloneNode target true) 'JsObject
                        style $ unsafe-coerce (.-style cloned) 'JsObject
                        card-style $ unsafe-coerce
                          .-style $ unsafe-coerce (.-firstElementChild cloned) 'JsObject
                          , 'JsObject
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
                  , nil
                :update $ if show?
                  let
                      target $ unsafe-coerce (.-firstElementChild el) 'JsObject
                      card-style $ unsafe-coerce
                        .-style $ unsafe-coerce (.-firstElementChild target) 'JsObject
                        , 'JsObject
                      style $ unsafe-coerce (.-style target) 'JsObject
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
          :schema $ :: 'Fn
            {} (:return 'Dynamic)
              :args $ [] 'Dynamic
              :features $ #{} :js-ffi
        'modal-actions-plugin $ %{} 'CodeEntry (:doc |)
          :code $ quote
            def modal-actions-plugin $ impl-traits PluginNodeCursorState %modal-actions
          :examples $ []
          :schema $ :: 'respo-alerts.core/PluginNodeCursorState
        'modal-menu-actions-plugin $ %{} 'CodeEntry (:doc |)
          :code $ quote
            def modal-menu-actions-plugin $ impl-traits PluginNodeCursorState %modal-menu-actions
          :examples $ []
          :schema $ :: 'respo-alerts.core/PluginNodeCursorState
        'prompt-actions-plugin $ %{} 'CodeEntry (:doc |)
          :code $ quote
            def prompt-actions-plugin $ impl-traits PromptPluginNodeCursorState %prompt-actions
          :examples $ []
          :schema $ :: 'respo-alerts.core/PromptPluginNodeCursorState
        'prompt-event-text $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn prompt-event-text (event)
              let
                  event-info $ unsafe-coerce (read-prompt-event event) 'respo-alerts.core/PromptEvent
                :text event-info
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'String)
              :args $ [] (:: 'Map 'Tag 'Dynamic)
          :tests $ []
            %{} 'TestEntry (:name |reads-respo-event-map)
              :code $ quote
                is $ = |hello
                  prompt-event-text $ {} (:value |hello)
              :tags $ #{} :regression :unit
            %{} 'TestEntry (:name |defaults-missing-value)
              :code $ quote
                is $ = |
                  prompt-event-text $ {}
              :tags $ #{} :regression :unit
        'prompt-key-action $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn prompt-key-action (event multiline?)
              hint-fn $ {}
                :args $ [] 'respo-alerts.core/PromptEvent 'Bool
                :return 'respo-alerts.core/PromptKeyAction
              if
                = 27 $ :keycode event
                %:: PromptKeyAction :close
                if
                  and
                    = 13 $ :keycode event
                    not= 229 $ :keycode event
                    or (not multiline?) (:meta? event) (:ctrl? event)
                  %:: PromptKeyAction :submit
                  %:: PromptKeyAction :ignore
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'respo-alerts.core/PromptKeyAction)
              :args $ [] 'respo-alerts.core/PromptEvent 'Bool
          :tests $ []
            %{} 'TestEntry (:name |keyboard-matrix)
              :code $ quote
                let
                    enter $ %{} PromptEvent (:text |) (:keycode 13) (:meta? false) (:ctrl? false)
                    escape $ assoc enter :keycode 27
                    composing $ assoc enter :keycode 229
                  is $ match (prompt-key-action enter false)
                    (:submit) true
                    _ false
                  is $ match (prompt-key-action enter true)
                    (:ignore) true
                    _ false
                  is $ match
                    prompt-key-action (assoc enter :meta? true) true
                    (:submit) true
                    _ false
                  is $ match
                    prompt-key-action (assoc enter :ctrl? true) true
                    (:submit) true
                    _ false
                  is $ match (prompt-key-action escape false)
                    (:close) true
                    _ false
                  is $ match (prompt-key-action composing false)
                    (:ignore) true
                    _ false
        'prompt-validation-error $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn prompt-validation-error (value)
              if (string? value) (unsafe-coerce value 'String) |
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'String)
              :args $ [] 'T
              :features $ #{} :js-ffi
              :generics $ [] 'T
          :tests $ []
            %{} 'TestEntry (:name |accepts-string)
              :code $ quote
                is $ = |Required (prompt-validation-error |Required)
              :tags $ #{} :unit
            %{} 'TestEntry (:name |rejects-absence)
              :code $ quote
                is $ = | (prompt-validation-error nil)
              :tags $ #{} :regression :unit
        'read-prompt-event $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn read-prompt-event (event)
              let
                  text $ option:fold (get event :value)
                    fn () |
                    fn (value)
                      if (string? value) (unsafe-coerce value 'String) |
                  keycode-value $ option:unwrap-or (get event :key-code)
                    option:unwrap-or (get event :keycode) 0
                  keycode $ if (number? keycode-value) (unsafe-coerce keycode-value 'Number) 0
                  meta? $ option:fold (get event :meta?)
                    fn () false
                    fn (value)
                      if (bool? value) (unsafe-coerce value 'Bool) false
                  ctrl? $ option:fold (get event :ctrl?)
                    fn () false
                    fn (value)
                      if (bool? value) (unsafe-coerce value 'Bool) false
                %{} PromptEvent (:text text) (:keycode keycode) (:meta? meta?) (:ctrl? ctrl?)
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'respo-alerts.core/PromptEvent)
              :args $ [] (:: 'Map 'Tag 'Dynamic)
          :tests $ []
            %{} 'TestEntry (:name |reads-key-modifiers)
              :code $ quote
                let
                    event $ unsafe-coerce
                      read-prompt-event $ {} (:value |hello) (:keycode 13) (:meta? true) (:ctrl? true)
                      , 'respo-alerts.core/PromptEvent
                  is $ = 13 (:keycode event)
                  is $ :meta? event
                  is $ :ctrl? event
            %{} 'TestEntry (:name |prefers-canonical-key-code)
              :code $ quote
                let
                    event $ unsafe-coerce
                      read-prompt-event $ {} (:key-code 27) (:keycode 13)
                      , 'respo-alerts.core/PromptEvent
                  is $ = 27 (:keycode event)
        'store-prompt-task! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn store-prompt-task! (cursor task)
              do
                reset! *prompt-tasks $ assoc @*prompt-tasks cursor task
                , &unit
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Unit)
              :args $ [] 'List
                :: 'Fn $ {} (:return 'Unit)
                  :args $ [] 'String
        'style-clear $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defstyle style-clear $ {}
              |& $ {} (:font-size 10) (:cursor :pointer)
                :color $ hsl 270 80 70
                :opacity 0.6
              |&:hover $ {} (:opacity 1)
          :examples $ []
          :schema $ :: 'Dynamic
        'style-drawer-backdrop $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defstyle style-drawer-backdrop $ {}
              |& $ merge style/backdrop
                {} $ :padding 0
          :examples $ []
          :schema $ :: 'Dynamic
        'style-drawer-card $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defstyle style-drawer-card $ {}
              |& $ merge style/card
                {} (:line-height |32px) (:height |100%) (:max-height |100vh) (:margin-right 0) (:border-radius |0px) (:max-width |50vw) (:width |24vw) (:min-width 360) (:box-shadow "|-2px 0px 24px 2px hsla(0,0%,0%,0.2)") (:transition-property |opacity,transform)
          :examples $ []
          :schema $ :: 'Dynamic
        'style-menu-item $ %{} 'CodeEntry (:doc |)
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
          :schema $ :: 'Dynamic
        'style-modal-backdrop $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defstyle style-modal-backdrop $ {} (|& style/backdrop)
          :examples $ []
          :schema $ :: 'Dynamic
        'style-modal-card $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defstyle style-modal-card $ {}
              |& $ merge style/card
                {} (:line-height |32px) (:box-shadow "|0px 2px 24px 0px hsl(0,0%,0%,0.2)") (:transition-property |opacity,transform)
          :examples $ []
          :schema $ :: 'Dynamic
        'style-modal-title $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defstyle style-modal-title $ {}
              |& $ {} (:padding |8px)
          :examples $ []
          :schema $ :: 'Dynamic
        'take-prompt-task! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn take-prompt-task! (cursor)
              let
                  task $ get @*prompt-tasks cursor
                clear-prompt-task! cursor
                , task
          :examples $ []
          :schema $ :: 'Fn
            {}
              :args $ [] 'List
              :return $ :: 'Option
                :: 'Fn $ {} (:return 'Unit)
                  :args $ [] 'String
          :tests $ []
            %{} 'TestEntry (:name |persists-across-renders)
              :code $ quote
                let
                    cursor $ [] :prompt-test
                    *called $ atom |
                    callback $ fn (text)
                      do (reset! *called text) &unit
                  store-prompt-task! cursor callback
                  option:fold (take-prompt-task! cursor)
                    fn () &unit
                    fn (task)
                      hint-fn $ {}
                        :args $ []
                          :: 'Fn $ {}
                            :args $ [] 'String
                            :return 'Unit
                        :return 'Unit
                      task |hello
                  is $ = |hello @*called
                  is $ option:none? (take-prompt-task! cursor)
              :tags $ #{} :regression :unit
        'use-alert $ %{} 'CodeEntry (:doc "||Alert dialog hook. Shows a simple message box. Returns a plugin object with .show method to display the alert.")
          :code $ quote
            defplugin use-alert (states options)
              let
                  cursor $ read-field states :cursor
                  state $ either (read-field states :data)
                    {} (:show? false)
                      :text $ read-field options :text
                  on-read $ either (read-field options :on-read)
                    fn (e d!)
                      d! cursor $ assoc state :show? false
                  node $ comp-alert-modal
                    assoc options :text $ read-field state :text
                    read-field state :show?
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
          :schema $ :: 'Fn
            {} (:return 'respo-alerts.core/alert-actions-plugin)
              :args $ [] 'Map 'Map
        'use-confirm $ %{} 'CodeEntry (:doc "||Confirm dialog hook. Shows a dialog with confirm/cancel buttons. Returns a plugin object, call .show with a callback function that executes after confirmation.")
          :code $ quote
            defplugin use-confirm (states options)
              let
                  cursor $ read-field states :cursor
                  state $ either (read-field states :data)
                    {} (:show? false) (:text |)
                  node $ comp-confirm-modal
                    if
                      blank? $ read-field state :text
                      , options $ assoc options :text (read-field state :text)
                    read-field state :show?
                    fn (e d!)
                      d! cursor $ assoc state :show? false
                      option:fold (take-prompt-task! cursor)
                        fn () &unit
                        fn (task)
                          hint-fn $ {}
                            :args $ []
                              :: 'Fn $ {}
                                :args $ [] 'String
                                :return 'Unit
                            :return 'Unit
                          task |
                    fn (d!) (clear-prompt-task! cursor)
                      d! cursor $ assoc state :show? false
                %:: confirm-actions-plugin :plugin node cursor state
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
          :schema $ :: 'Fn
            {} (:return 'respo-alerts.core/confirm-actions-plugin)
              :args $ [] 'Map 'Map
        'use-drawer $ %{} 'CodeEntry (:doc "||Drawer hook. Shows a panel sliding from the side. Use :render function in options to customize content. Supports :style for width and other styles.")
          :code $ quote
            defn use-drawer (states options)
              let
                  cursor $ read-field states :cursor
                  state $ either (read-field states :data)
                    {} $ :show? false
                  node $ comp-drawer options (read-field state :show?)
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
          :schema $ :: 'Fn
            {} (:return 'respo-alerts.core/drawer-actions-plugin)
              :args $ [] 'Map 'Map
        'use-modal $ %{} 'CodeEntry (:doc "||Modal dialog hook. Shows a modal with custom content. Use :render function in options to customize content. Returns a plugin object.")
          :code $ quote
            defn use-modal (states options)
              let
                  cursor $ read-field states :cursor
                  state $ either (read-field states :data)
                    {} $ :show? false
                  node $ comp-modal options (read-field state :show?)
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
          :schema $ :: 'Fn
            {} (:return 'respo-alerts.core/modal-actions-plugin)
              :args $ [] 'Map 'Map
        'use-modal-menu $ %{} 'CodeEntry (:doc "||Modal menu hook. Shows a modal dialog with a list of options. Define options via :items and handle selection via :on-result in options.")
          :code $ quote
            defn use-modal-menu (states options)
              let
                  cursor $ read-field states :cursor
                  state $ either (read-field states :data)
                    {} $ :show? false
                  node $ comp-modal-menu options (read-field state :show?)
                    fn (d!)
                      d! cursor $ assoc state :show? false
                    fn (result d!)
                      (read-field options :on-result) result d!
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
          :schema $ :: 'Fn
            {} (:return 'respo-alerts.core/modal-menu-actions-plugin)
              :args $ [] 'Map 'Map
        'use-prompt $ %{} 'CodeEntry (:doc "||Prompt dialog hook. Shows a dialog with text input. Returns a plugin object, call .show with a callback function to receive user input text.")
          :code $ quote
            defplugin use-prompt (states options)
              let
                  cursor $ read-field states :cursor
                  state $ either (read-field states :data)
                    {} $ :show? false
                  node $ comp-prompt-modal (>> states :modal) options (read-field state :show?)
                    fn (text d!)
                      do
                        d! cursor $ assoc state :show? false
                        option:fold (take-prompt-task! cursor)
                          fn () &unit
                          fn (task)
                            hint-fn $ {}
                              :args $ []
                                :: 'Fn $ {}
                                  :args $ [] 'String
                                  :return 'Unit
                              :return 'Unit
                            task text
                    fn (d!) (clear-prompt-task! cursor)
                      d! cursor $ assoc state :show? false
                %:: prompt-actions-plugin :plugin node cursor state
          :examples $ []
            quote $ let
                prompt-plugin $ use-prompt (>> states :prompt)
                  {} (:text "|请输入名称") (:placeholder |name)
              button
                {} $ :on-click
                  fn (e d!)
                    .show prompt-plugin d! $ fn (text) (println |got: text)
                <> |Input
          :schema $ :: 'Fn
            {} (:return 'respo-alerts.core/prompt-actions-plugin)
              :args $ [] 'Map 'Map
      :ns $ %{} 'NsEntry (:doc |)
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
            respo-alerts.util :refer $ focus-element! select-element! read-field
            calcit.test :refer $ is
    'respo-alerts.main $ %{} 'FileEntry
      :defs $ {}
        '*reel $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defatom *reel $ -> reel-schema/reel (assoc :base schema/store) (assoc :store schema/store)
          :examples $ []
          :schema $ :: 'Ref
        'dispatch! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn dispatch! (op)
              do
                when
                  and config/dev? $ match op
                    (:states ignored-cursor ignored-state) false
                    _ true
                  js/console.log |Dispatch: op
                reset! *reel $ reel-updater updater @*reel op
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Tag)
              :args $ [] 'Enum
        'main! $ %{} 'CodeEntry (:doc |)
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
          :schema $ :: 'Fn
            {} (:return 'Dynamic)
              :args $ []
              :features $ #{} :js-ffi
        'mount-target $ %{} 'CodeEntry (:doc |)
          :code $ quote
            def mount-target $ js/document.querySelector |.app
          :examples $ []
          :schema $ :: 'Dynamic
        'persist-storage! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn persist-storage! (? e)
              js/localStorage.setItem (:storage-key config/site)
                format-cirru-edn $ :store @*reel
          :examples $ []
          :schema $ :: 'Dynamic
        'reload! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn reload! () $ if (nil? build-errors)
              do (remove-watch *reel :changes) (clear-cache!)
                add-watch *reel :changes $ fn (reel prev) (render-app!)
                reset! *reel $ refresh-reel @*reel schema/store updater
                hud! |ok~ |Ok
              hud! |error build-errors
          :examples $ []
          :schema $ :: 'Dynamic
        'render-app! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn render-app! () $ render! mount-target (comp-container @*reel) dispatch!
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
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
    'respo-alerts.schema $ %{} 'FileEntry
      :defs $ {}
        'confirm-button-name $ %{} 'CodeEntry (:doc |)
          :code $ quote (def confirm-button-name |respo-confirm-button)
          :examples $ []
          :schema $ :: 'String
        'input-box-name $ %{} 'CodeEntry (:doc |)
          :code $ quote (def input-box-name |respo-prompt-input)
          :examples $ []
          :schema $ :: 'String
        'store $ %{} 'CodeEntry (:doc |)
          :code $ quote
            def store $ {}
              :states $ {}
              :content |
          :examples $ []
          :schema $ :: 'Map
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote (ns respo-alerts.schema)
    'respo-alerts.style $ %{} 'FileEntry
      :defs $ {}
        'backdrop $ %{} 'CodeEntry (:doc |)
          :code $ quote
            def backdrop $ {}
              :background-color $ hsl 0 30 10 0.6
              :position :fixed
              :z-index |999
              :padding 16
          :examples $ []
          :schema $ :: 'Map
        'button $ %{} 'CodeEntry (:doc |)
          :code $ quote
            def button $ merge ui/button
              {} (:border-radius |4px) (:background-color :white)
                :border-color $ hsl 240 60 90
          :examples $ []
          :schema $ :: 'Map
        'card $ %{} 'CodeEntry (:doc |)
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
          :schema $ :: 'Map
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote
          ns respo-alerts.style $ :require
            respo.util.format :refer $ hsl
            respo-ui.core :as ui
    'respo-alerts.trigger $ %{} 'FileEntry
      :defs $ {}
        'comp-trigger $ %{} 'CodeEntry (:doc "||Trigger component. Wraps an element with visual feedback when active. Uses :trigger-style and :trigger-active-style from options.")
          :code $ quote
            defcomp comp-trigger (show? el ? options)
              div
                {} $ :class-name style-trigger-container
                , el $ div
                  {}
                    :class-name $ str-spaced style-trigger (if show? style-trigger-active)
                    :style $ merge (read-field options :trigger-style)
                      if show? $ read-field options :trigger-active-style
          :examples $ []
            quote $ comp-trigger show?
              button
                {} $ :on-click on-click
                <> "|Click me"
              {}
                :trigger-style $ {} (:color |blue)
                :trigger-active-style $ {} (:color |red)
          :schema $ :: 'Dynamic
        'style-trigger $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defstyle style-trigger $ {}
              |& $ {} (:border-radius |50%) (:position :absolute) (:transform "|translate(-50%,-50%)") (:top |50%) (:left |50%) (:width 0) (:height 0) (:transition-duration |300ms) (:transition-delay |100ms) (:pointer-events :none) (:z-index |900) (:opacity 1)
                :background $ str "|radial-gradient(" (hsl 0 0 70 0.8) "|0% ," (hsl 0 0 60 0.0) "| 50%)"
          :examples $ []
          :schema $ :: 'Dynamic
        'style-trigger-active $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defstyle style-trigger-active $ {}
              |& $ {} (:width 2000) (:height 2000) (:opacity 0.3) (:transition-delay |0ms)
          :examples $ []
          :schema $ :: 'Dynamic
        'style-trigger-container $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defstyle style-trigger-container $ {}
              |& $ {} (:display :inline-block) (:position :relative)
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote
          ns respo-alerts.trigger $ :require
            respo.core :refer $ defcomp defplugin list-> <> >> div button textarea span input a defeffect
            respo-ui.css :as css
            respo.util.format :refer $ hsl
            respo.css :refer $ defstyle
            respo-alerts.util :refer $ read-field
    'respo-alerts.updater $ %{} 'FileEntry
      :defs $ {}
        'updater $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn updater (store op op-id op-time)
              match op
                (:states cursor s) (update-states store cursor s)
                (:content c) (assoc store :content c)
                (:hydrate-storage d) d
                _ $ do (js/console.warn "|Unknown op:" op) store
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Map)
              :args $ [] 'Map 'Enum 'String 'Number
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote
          ns respo-alerts.updater $ :require
            respo.cursor :refer $ update-states
            respo-alerts.config :refer $ dev?
    'respo-alerts.util $ %{} 'FileEntry
      :defs $ {}
        'focus-element! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn focus-element! (query)
              let
                  target $ js/document.querySelector query
                if (js-present? target)
                  do
                    .!focus $ unsafe-coerce target JsObject
                    , &unit
                  , &unit
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Unit)
              :args $ [] 'String
              :features $ #{} :js-ffi
        'read-field $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn read-field (value field)
              if (struct? value) (&struct:get value field)
                if (map? value) (&map:get value field) nil
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Dynamic)
              :args $ [] 'Dynamic 'Tag
          :tests $ []
            %{} 'TestEntry (:name |reads-map)
              :code $ quote
                assert= 1 $ read-field
                  {} $ :value 1
                  , :value
            %{} 'TestEntry (:name |handles-absent-options)
              :code $ quote
                assert= nil $ read-field nil :trigger-style
        'select-element! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn select-element! (query)
              let
                  target $ js/document.querySelector query
                if (js-present? target)
                  do
                    .!select $ unsafe-coerce target JsObject
                    , &unit
                  , &unit
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Unit)
              :args $ [] 'String
              :features $ #{} :js-ffi
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote (ns respo-alerts.util)
