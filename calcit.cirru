
{}
  :about "|Machine-generated snapshot. Do not edit directly — changes will be overwritten. Use `calcit query` to inspect and `calcit edit`/`calcit tree` to modify. Run `calcit docs agents --contract` before mutations; use `--full` for first orientation or changed contract digest. Manual edits must follow format and schema conventions, then run `calcit edit format`."
  :package |respo-alerts
  :entries $ {} $ :default
    {} (:description |) (:init-fn 'respo-alerts.main/main!) (:mode :js) (:reload-fn 'respo-alerts.main/reload!) (:target :browser)
      :feature-policy $ {}
      :modules $ [] |respo.calcit/ |respo-ui.calcit/ |reel.calcit/ |js-ffi/
      :type-slots $ {} $ :dispatch-op 'respo-alerts.schema/Op
  :files $ {}
    'respo-alerts.comp.container $ %{} 'FileEntry
      :defs $ {}
        'comp-container $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-container (reel on-control)
            let
                store $ :store reel
                states $ read-field-or store :states $ {}
                state $ read-field-or states :data $ {} (:selected |) (:show-modal? false) (:show-modal-menu? false)
              div
                {}
                  :class-name $ str-spaced css/global css/fullscreen css/column
                  :style $ {} $ :padding 20
                div ({})
                  a
                    {} (:href |https://respo-mvc.org/) (:target |_blank)
                    img $ {} (:class-name style-logo)
                      :src |https://cos-sh.tiye.me/cos-up/bb4c2755050318e864b56f59145d726e-SubstractRespo.png
                space-y 40
                comp-hooks-usages $ decode-map-as (>> states :hooks) (Map Tag Dynamic)
                space-y 40
                comp-controlled-modals $ decode-map-as (>> states :controlled) (Map Tag Dynamic)
                space-y 40
                comp-demo-trigger $ decode-map-as (>> states :trigger) (Map Tag Dynamic)
                if dev?
                  Some $ comp-inspect |states states $ {} (:bottom 0)
                  , None
                if dev?
                  Some $ comp-typed-reel (>> states :reel) reel ({}) on-control
                  , None
          :examples $ []
          :schema $ quote $ Fn
            reel.typed/State respo-alerts.schema/Op $ Map Dynamic Dynamic
            Fn reel.typed/Control $ -> Unit
            -> respo.schema/Component
            :features :io :state
        'comp-controlled-modals $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-controlled-modals (states)
            let
                demo-modal $ use-modal (>> states :modal)
                  {} (:title |demo)
                    :style $ {} $ :width 400
                    :container-style $ {}
                    :backdrop-style $ {}
                    :render $ fn (on-close)
                      div ({}) (<> "|Place for child content")
                        button $ {} (:class-name css/button) (:inner-text |Close)
                          :on-click $ fn (e d!) (on-close d!)
                demo-modal-menu $ use-modal-menu (>> states :modal-menu)
                  {} (:title |Demo)
                    :style $ {} $ :width 300
                    :items $ [] (:: :item |a |A)
                      :: :item |b $ div ({}) (<> |B)
                    :on-result $ fn (result d!) (println "|got result" result)
                demo-drawer $ use-drawer (>> states :drawer)
                  {} (:title |demo)
                    :style $ {} $ ; :width 400
                    :container-style $ {}
                    :backdrop-style $ {}
                    :render $ fn (on-close)
                      div ({}) (<> "|Place for child content")
                        button $ {} (:class-name css/button) (:inner-text |Close)
                          :on-click $ fn (e d!) (on-close d!)
              div ({})
                div ({}) (<> "|Modal usage")
                div
                  {} $ :style $ {} (:padding "|8px 0px")
                  button $ {} (:inner-text "|show modal") (:class-name css/button)
                    :on-click $ fn (e d!)
                      hint-fn $ Fn respo.schema/RespoEvent
                        Fn *dispatch-op $ -> Unit
                        -> Unit
                      .show demo-modal d!
                  space-x 8
                  button $ {} (:inner-text "|show modal menu") (:class-name css/button)
                    :on-click $ dispatch-fn (e d!) (.show demo-modal-menu d!)
                  space-x 8
                  button $ {} (:inner-text "|show drawer") (:class-name css/button)
                    :on-click $ dispatch-fn (e d!) (.show demo-drawer d!)
                  .render demo-modal
                  .render demo-modal-menu
                  .render demo-drawer
          :examples $ []
          :schema $ quote $ Fn (Map Tag Dynamic) (-> respo.schema/Component) (:features :io)
        'comp-demo-trigger $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-demo-trigger (states)
            let
                cursor $ read-field-or states :cursor $ []
                state $ as-state-map $ read-field-or states :data
                  {} $ :visible? false
              div ({})
                div ({}) (<> |Trigger)
                div ({})
                  comp-trigger
                    = true $ read-field-or state :visible? false
                    button $ {} (:inner-text |Toggle) (:class-name css/button)
                      :on-click $ fn (e d!)
                        d! $ :: :states cursor $ &map:assoc state :visible?
                          not $ read-field-or state :visible? false
                    , nil
          :examples $ []
          :schema $ quote $ Fn (Map Tag Dynamic) (-> respo.schema/Component)
        'comp-hooks-usages $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-hooks-usages (states)
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
                      if (string? text)
                        if (blank? text) "|Please enter text" |
                        raise "|prompt validator expected String"
                prompt-plugin $ use-prompt (>> states :prompt)
                  {} $ :title |demo
                prompt-multilines-plugin $ use-prompt (>> states :multilines-prompt)
                  {} (:title "|demo multilines")
                    :text "|This would be a very long content of alerts, like some prompt... write multiple lines:"
                    :initial $ str $ rand-int 100
                    :style $ {}
                    :input-class css/font-code!
                    :multiline? true
                prompt-validation-plugin $ use-prompt (>> states :validation-prompt)
                  {} (:title |validated)
                    :text "|This would be a very long content of alerts, like some prompt... write multiple lines:"
                    :initial $ str $ rand-int 100
                    :style $ {}
                    :input-class css/font-code!
                    :multiline? true
                    :validator validate-cirru-source
              div ({})
                div ({}) (<> |Hooks)
                div ({})
                  comp-trigger
                    let
                        show? $ .show? alert-plugin
                      if (bool? show?) show? $ raise "|alert visibility must be Bool"
                    button $ {} (:inner-text "|show alert") (:class-name css/button)
                      :on-click $ dispatch-fn (e d!) (.show alert-plugin d! None)
                    , nil
                  space-x 8
                  button $ {} (:inner-text "|show alert text") (:class-name css/button)
                    :on-click $ dispatch-fn (e d!)
                      .show alert-text-plugin d! $ Some "|DEMO text"
                  space-x 8
                  button $ {} (:inner-text "|show confirm") (:class-name css/button)
                    :on-click $ fn (e d!)
                      hint-fn $ Fn respo.schema/RespoEvent
                        Fn *dispatch-op $ -> Unit
                        -> Unit
                      .show confirm-plugin d! $ fn () $ println "|after confirmed"
                      , &unit
                  space-x 8
                  button $ {} (:inner-text "|show confirm with text") (:class-name css/button)
                    :on-click $ fn (e d!)
                      hint-fn $ Fn respo.schema/RespoEvent
                        Fn *dispatch-op $ -> Unit
                        -> Unit
                      .show confirm-prompt-plugin d! $ fn (text)
                        hint-fn $ Fn String $ -> Unit
                        .show-with-text confirm-plugin d! (str "|Confirmed: " text)
                          fn () $ println |after-confirmed
                      , &unit
                  space-x 8
                  button $ {} (:inner-text "|show prompt") (:class-name css/button)
                    :on-click $ dispatch-fn (e d!)
                      .show prompt-plugin d! $ fn (text)
                        hint-fn $ Fn String $ -> Unit
                        println "|read from prompt" $ to-lispy-string text
                  space-x 8
                  button $ {} (:inner-text "|show multilines prompt") (:class-name css/button)
                    :on-click $ dispatch-fn (e d!)
                      .show prompt-multilines-plugin d! $ fn (text)
                        hint-fn $ Fn String $ -> Unit
                        println "|read from prompt" $ to-lispy-string text
                  space-x 8
                  comp-trigger
                    let
                        show? $ .show? prompt-validation-plugin
                      if (bool? show?) show? $ raise "|prompt visibility must be Bool"
                    button $ {} (:inner-text "|show validated prompt") (:class-name css/button)
                      :on-click $ dispatch-fn (e d!)
                        .show prompt-validation-plugin d! $ fn (text)
                          hint-fn $ Fn String $ -> Unit
                          println "|read from prompt" $ to-lispy-string text
                    , nil
                .render alert-plugin
                .render confirm-plugin
                .render confirm-prompt-plugin
                .render prompt-plugin
                .render prompt-multilines-plugin
                .render prompt-validation-plugin
                .render alert-text-plugin
          :examples $ []
          :schema $ quote $ Fn (Map Tag Dynamic) (-> respo.schema/Component) (:features :io :state)
        'style-logo $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-logo
            {} $ |& $ {} (:width 120)
          :examples $ []
          :schema $ quote String
        'validate-cirru-source $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn validate-cirru-source (source)
            try
              let
                  forms $ parse-cirru-list source
                if (empty? forms) "|Expected at least one Cirru form" |
              fn (error) (str error)
          :examples $ []
          :schema $ quote $ Fn String (-> String)
          :tests $ [] $ %{} 'TestEntry (:name |rejects-empty-and-invalid-parse-results)
            :code $ quote $ do
              assert= | $ validate-cirru-source |a
              assert= false $ blank? $ validate-cirru-source (char-from-code 40)
              assert= false $ blank? $ validate-cirru-source (char-from-code 34)
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns respo-alerts.comp.container
          :require (respo-ui.core :as ui)
            respo.css :refer $ defstyle
            respo-ui.css :as css
            respo.core :refer $ defcomp >> <> div button textarea span img a dispatch-fn
            respo.comp.space :refer $ space-x space-y
            reel.comp.reel :refer $ comp-typed-reel
            respo-alerts.config :refer $ dev?
            respo-alerts.core :refer $ comp-modal comp-modal-menu use-alert use-confirm use-prompt use-modal use-modal-menu use-drawer as-state-map
            respo.comp.inspect :refer $ comp-inspect
            respo-alerts.style :as style
            |@calcit/std :refer $ rand-int
            respo-alerts.trigger :refer $ comp-trigger
            respo-alerts.util :refer $ read-field read-field-or
    'respo-alerts.config $ %{} 'FileEntry
      :defs $ {}
        'dev? $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def dev?
            = |dev $
              get-env |mode
              , .unwrap-or |release
          :examples $ []
          :schema $ quote Bool
        'site $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def site
            {} (:dev-ui |http://localhost:8100/main-fonts.css) (:release-ui |http://cdn.tiye.me/favored-fonts/main-fonts.css) (:cdn-url |http://cdn.tiye.me/calcit-workflow/) (:title |Alerts) (:icon |http://cdn.tiye.me/logo/respo.png) (:storage-key |respo-alerts)
          :examples $ []
          :schema $ quote $ Map Tag String
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns respo-alerts.config
    'respo-alerts.core $ %{} 'FileEntry
      :defs $ {}
        '%alert-actions $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defimpl %alert-actions AlertActions
            .render $ fn (self)
              hint-fn $ Fn PluginNodeCursorState $ -> respo.schema/Component
              match self $
                :plugin node cursor state
                , node
            .show $ fn (self d! text)
              hint-fn $ Fn PluginNodeCursorState
                Fn *dispatch-op $ -> Unit
                Option String
                -> Unit
              match self $
                :plugin node cursor state
                match text
                  (:some t)
                    do
                      d! $ :: :states cursor $ -> (as-state-map state) (&map:assoc :show? true) (&map:assoc :text t)
                      , &unit
                  (:none)
                    do
                      d! $ :: :states cursor $ &map:assoc (as-state-map state) :show? true
                      , &unit
            .close $ fn (self d!)
              hint-fn $ Fn PluginNodeCursorState
                Fn *dispatch-op $ -> Unit
                -> Unit
              match self $
                :plugin node cursor state
                do
                  d! $ :: :states cursor $ &map:assoc (as-state-map state) :show? false
                  , &unit
            .show? $ fn (self)
              hint-fn $ Fn PluginNodeCursorState $ -> Bool
              match self $
                :plugin node cursor state
                = true $ read-field-or state :show? false
          :examples $ []
          :schema $ quote Impl
          :tests $ [] $ %{} 'TestEntry (:name |show-takes-optional-text)
            :code $ quote $ let
                cursor $ [] :alert-contract
                plugin $ alert-actions-plugin :plugin
                  respo.schema/Component :name :alert-contract :effects ([]) :listeners ([]) :tree None
                  , cursor $ {}
                calls $ ref $ assert-type ([]) (List *dispatch-op)
                dispatch! $ fn (op)
                  hint-fn $ Fn *dispatch-op $ -> Unit
                  reset! calls $ .append @calls op
                  , &unit
              .show plugin dispatch! $ Some |hello
              .show plugin dispatch! None
              assert= 2 $ .len @calls
              match
                .unwrap $ first @calls
                (:states received-cursor received-state)
                  do (assert= cursor received-cursor)
                    assert= (Some |hello) (get received-state :text)
                _ $ assert= true false
              match
                .unwrap $ last @calls
                (:states received-cursor received-state)
                  do
                    assert= (Some true) (get received-state :show?)
                    assert= None $ get received-state :text
                _ $ assert= true false
            :tags $ #{} :regression :unit
        '%confirm-actions $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defimpl %confirm-actions ConfirmActions
            .render $ fn (self)
              hint-fn $ Fn PluginNodeCursorState $ -> respo.schema/Component
              match self $
                :plugin node cursor state
                , node
            .show $ fn (self d! next-task)
              hint-fn $ Fn PluginNodeCursorState
                Fn *dispatch-op $ -> Unit
                Fn $ -> Unit
                -> Unit
              match self $
                :plugin node cursor state
                do
                  store-prompt-task! cursor $ as-prompt-task $ fn (ignored)
                    hint-fn $ Fn String $ -> Unit
                    next-task
                  d! $ :: :states cursor $ -> (as-state-map state) (&map:assoc :show? true) (&map:assoc :text |)
            .show-with-text $ fn (self d! text next-task)
              hint-fn $ Fn PluginNodeCursorState
                Fn *dispatch-op $ -> Unit
                , String
                  Fn $ -> Unit
                  -> Unit
              match self $
                :plugin node cursor state
                do
                  store-prompt-task! cursor $ as-prompt-task $ fn (ignored)
                    hint-fn $ Fn String $ -> Unit
                    next-task
                  d! $ :: :states cursor $ -> (as-state-map state) (&map:assoc :show? true) (&map:assoc :text text)
            .close $ fn (self d!)
              hint-fn $ Fn PluginNodeCursorState
                Fn *dispatch-op $ -> Unit
                -> Unit
              match self $
                :plugin node cursor state
                do (clear-prompt-task! cursor)
                  d! $ :: :states cursor $ &map:assoc (as-state-map state) :show? false
            .show? $ fn (self)
              hint-fn $ Fn PluginNodeCursorState $ -> Bool
              match self $
                :plugin node cursor state
                = true $ read-field-or state :show? false
          :examples $ []
          :schema $ quote Impl
          :tests $ [] $ %{} 'TestEntry (:name |single-dispatch-zero-argument-task-and-close)
            :code $ quote $ let
                cursor $ [] :confirm-contract
                node $ respo.schema/Component :name :test :effects ([]) :listeners ([]) :tree None
                plugin $ confirm-actions-plugin :plugin node cursor $ {}
              .show plugin
                fn (op)
                  hint-fn $ Fn *dispatch-op $ -> Unit
                  assert=
                    :: :states cursor $ {} (:show? true) (:text |)
                    , op
                  , &unit
                fn () &unit
              match (take-prompt-task! cursor)
                (:some task) (task |)
                (:none) (raise |Missing-confirm-task)
              assert= None $ take-prompt-task! cursor
              .show-with-text plugin
                fn (op)
                  hint-fn $ Fn *dispatch-op $ -> Unit
                  assert=
                    :: :states cursor $ {} (:show? true) (:text |override)
                    , op
                  , &unit
                , |override $ fn () &unit
              .close plugin $ fn (op)
                hint-fn $ Fn *dispatch-op $ -> Unit
                assert=
                  :: :states cursor $ {} $ :show? false
                  , op
                , &unit
              assert= None $ take-prompt-task! cursor
            :tags $ #{} :regression :unit
        '%drawer-actions $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defimpl %drawer-actions DrawerActions
            .render $ fn (self)
              hint-fn $ Fn PluginNodeCursorState $ -> respo.schema/Component
              match self $
                :plugin node cursor state
                , node
            .show $ fn (self d!)
              hint-fn $ Fn PluginNodeCursorState
                Fn *dispatch-op $ -> Unit
                -> Unit
              match self $
                :plugin node cursor state
                do
                  d! $ :: :states cursor $ &map:assoc (as-state-map state) :show? true
                  , &unit
            .close $ fn (self d!)
              hint-fn $ Fn PluginNodeCursorState
                Fn *dispatch-op $ -> Unit
                -> Unit
              match self $
                :plugin node cursor state
                do
                  d! $ :: :states cursor $ &map:assoc (as-state-map state) :show? false
                  , &unit
            .show? $ fn (self)
              hint-fn $ Fn PluginNodeCursorState $ -> Bool
              match self $
                :plugin node cursor state
                = true $ read-field-or state :show? false
          :examples $ []
          :schema $ quote Impl
        '%modal-actions $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defimpl %modal-actions ModalActions
            .render $ fn (self)
              hint-fn $ Fn PluginNodeCursorState $ -> respo.schema/Component
              match self $
                :plugin node cursor state
                , node
            .show show-modal!
            .close close-modal!
            .show? $ fn (self)
              hint-fn $ Fn PluginNodeCursorState $ -> Bool
              match self $
                :plugin node cursor state
                = true $ read-field-or state :show? false
          :examples $ []
          :schema $ quote Impl
          :tests $ [] $ %{} 'TestEntry (:name |preserves-dispatch-return-and-visibility)
            :code $ quote $ let
                cursor $ [] :modal-contract
                plugin $ modal-actions-plugin :plugin
                  respo.schema/Component :name :modal-contract :effects ([]) :listeners ([]) :tree None
                  , cursor $ {}
                calls $ ref $ assert-type ([]) (List *dispatch-op)
                dispatch! $ fn (op)
                  hint-fn $ Fn *dispatch-op $ -> Number
                  reset! calls $ .append @calls op
                  , 42
                unit-dispatch! $ fn (op)
                  hint-fn $ Fn *dispatch-op $ -> Unit
                  , &unit
              assert= 42 $ .show plugin dispatch!
              assert= 42 $ .close plugin dispatch!
              assert= 2 $ .len @calls
              match
                .unwrap $ first @calls
                (:states received-cursor received-state)
                  do (assert= cursor received-cursor)
                    assert= (Some true) (get received-state :show?)
                _ $ assert= true false
              match
                .unwrap $ last @calls
                (:states received-cursor received-state)
                  do (assert= cursor received-cursor)
                    assert= (Some false) (get received-state :show?)
                _ $ assert= true false
              assert= &unit $ .show plugin unit-dispatch!
              assert= &unit $ .close plugin unit-dispatch!
            :tags $ #{} :regression :unit
        '%modal-menu-actions $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defimpl %modal-menu-actions ModalMenuActions
            .render $ fn (self)
              hint-fn $ Fn PluginNodeCursorState $ -> respo.schema/Component
              match self $
                :plugin node cursor state
                , node
            .show $ fn (self d!)
              hint-fn $ Fn PluginNodeCursorState
                Fn *dispatch-op $ -> Unit
                -> Unit
              match self $
                :plugin node cursor state
                do
                  d! $ :: :states cursor $ &map:assoc (as-state-map state) :show? true
                  , &unit
            .close $ fn (self d!)
              hint-fn $ Fn PluginNodeCursorState
                Fn *dispatch-op $ -> Unit
                -> Unit
              match self $
                :plugin node cursor state
                do
                  d! $ :: :states cursor $ &map:assoc (as-state-map state) :show? false
                  , &unit
            .show? $ fn (self)
              hint-fn $ Fn PluginNodeCursorState $ -> Bool
              match self $
                :plugin node cursor state
                = true $ read-field-or state :show? false
          :examples $ []
          :schema $ quote Impl
        '%prompt-actions $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defimpl %prompt-actions PromptActions
            .render $ fn (self)
              hint-fn $ Fn PromptPluginNodeCursorState $ -> respo.schema/Component
              match self $
                :plugin node cursor state
                , node
            .show $ fn (self d! next-task)
              hint-fn $ Fn PromptPluginNodeCursorState
                Fn *dispatch-op $ -> Unit
                Fn String $ -> R
                -> Unit
                :generics R
              match self $
                :plugin node cursor state
                do
                  store-prompt-task! cursor $ as-prompt-task next-task
                  d! $ :: :states cursor $ &map:assoc (as-state-map state) :show? true
                  , &unit
            .close $ fn (self d!)
              hint-fn $ Fn PromptPluginNodeCursorState
                Fn *dispatch-op $ -> Unit
                -> Unit
              match self $
                :plugin node cursor state
                do (clear-prompt-task! cursor)
                  d! $ :: :states cursor $ &map:assoc (as-state-map state) :show? false
                  , &unit
            .show? $ fn (self)
              hint-fn $ Fn PromptPluginNodeCursorState $ -> Bool
              match self $
                :plugin node cursor state
                = true $ read-field-or state :show? false
          :examples $ []
          :schema $ quote Impl
          :tests $ [] $ %{} 'TestEntry (:name |stores-callback-across-render)
            :code $ quote $ let
                cursor $ [] :action-test
                plugin $ %:: prompt-actions-plugin :plugin
                  respo.schema/Component :name :test :effects ([]) :listeners ([]) :tree None
                  , cursor $ {}
                next-task $ fn (text) &unit
                d! $ fn (op) &unit
              do (.show plugin d! next-task)
                is $
                  get @*prompt-tasks cursor
                  , .some?
                clear-prompt-task! cursor
            :tags $ #{} :regression :unit
        '*prompt-tasks $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defref *prompt-tasks ({})
          :examples $ []
          :schema $ quote $ Ref
            Map (List respo.schema/CoordKey)
              Fn String $ -> Unit
        'AlertActions $ %{} 'CodeEntry (:doc |)
          :code $ quote $ deftrait AlertActions
            .render $ Fn respo-alerts.core/PluginNodeCursorState $ -> respo.schema/Component
            .show $ Fn respo-alerts.core/PluginNodeCursorState
              Fn *dispatch-op $ -> Unit
              Option String
              -> Unit
            .close $ Fn respo-alerts.core/PluginNodeCursorState
              Fn *dispatch-op $ -> Unit
              -> Unit
            .show? $ Fn respo-alerts.core/PluginNodeCursorState $ -> Bool
          :examples $ []
          :schema $ quote Trait
        'ConfirmActions $ %{} 'CodeEntry
          :doc "|Confirm plugin: .show(plugin, dispatch!, next-task) and .show-with-text(plugin, dispatch!, text, next-task). dispatch! receives one Enum operation, including (:: :states cursor data), and returns Unit; next-task receives no arguments and returns Unit. Do not pass the retired (cursor,data) state callback. .close clears the pending task before dispatching closed state."
          :code $ quote $ deftrait ConfirmActions
            .render $ Fn respo-alerts.core/PluginNodeCursorState $ -> respo.schema/Component
            .show $ Fn respo-alerts.core/PluginNodeCursorState
              Fn *dispatch-op $ -> Unit
              Fn $ -> Unit
              -> Unit
            .show-with-text $ Fn respo-alerts.core/PluginNodeCursorState
              Fn *dispatch-op $ -> Unit
              , String
                Fn $ -> Unit
                -> Unit
            .close $ Fn respo-alerts.core/PluginNodeCursorState
              Fn *dispatch-op $ -> Unit
              -> Unit
            .show? $ Fn respo-alerts.core/PluginNodeCursorState $ -> Bool
          :examples $ []
          :schema $ quote Trait
        'DrawerActions $ %{} 'CodeEntry (:doc |)
          :code $ quote $ deftrait DrawerActions
            .render $ Fn respo-alerts.core/PluginNodeCursorState $ -> respo.schema/Component
            .show $ Fn respo-alerts.core/PluginNodeCursorState
              Fn *dispatch-op $ -> Unit
              -> Unit
            .close $ Fn respo-alerts.core/PluginNodeCursorState
              Fn *dispatch-op $ -> Unit
              -> Unit
            .show? $ Fn respo-alerts.core/PluginNodeCursorState $ -> Bool
          :examples $ []
          :schema $ quote Trait
        'ModalActions $ %{} 'CodeEntry (:doc |)
          :code $ quote $ deftrait ModalActions
            .render $ Fn respo-alerts.core/PluginNodeCursorState $ -> respo.schema/Component
            .show $ Fn respo-alerts.core/PluginNodeCursorState
              Fn *dispatch-op $ -> R
              -> R
              :generics R
            .close $ Fn respo-alerts.core/PluginNodeCursorState
              Fn *dispatch-op $ -> R
              -> R
              :generics R
            .show? $ Fn respo-alerts.core/PluginNodeCursorState $ -> Bool
          :examples $ []
          :schema $ quote Trait
        'ModalMenuActions $ %{} 'CodeEntry (:doc |)
          :code $ quote $ deftrait ModalMenuActions
            .render $ Fn respo-alerts.core/PluginNodeCursorState $ -> respo.schema/Component
            .show $ Fn respo-alerts.core/PluginNodeCursorState
              Fn *dispatch-op $ -> Unit
              -> Unit
            .close $ Fn respo-alerts.core/PluginNodeCursorState
              Fn *dispatch-op $ -> Unit
              -> Unit
            .show? $ Fn respo-alerts.core/PluginNodeCursorState $ -> Bool
          :examples $ []
          :schema $ quote Trait
        'PluginNodeCursorState $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defenum PluginNodeCursorState
            :plugin respo.schema/Component (List respo.schema/CoordKey) Dynamic
          :examples $ []
          :schema $ quote EnumDef
        'PromptActions $ %{} 'CodeEntry (:doc |)
          :code $ quote $ deftrait PromptActions
            .render $ Fn respo-alerts.core/PromptPluginNodeCursorState $ -> respo.schema/Component
            .show $ Fn respo-alerts.core/PromptPluginNodeCursorState
              Fn *dispatch-op $ -> Unit
              Fn String $ -> R
              -> Unit
              :generics R
            .close $ Fn respo-alerts.core/PromptPluginNodeCursorState
              Fn *dispatch-op $ -> Unit
              -> Unit
            .show? $ Fn respo-alerts.core/PromptPluginNodeCursorState $ -> Bool
          :examples $ []
          :schema $ quote Trait
        'PromptEvent $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct PromptEvent (:text String) (:keycode Number) (:meta? Bool) (:ctrl? Bool)
          :examples $ []
          :schema $ quote StructDef
        'PromptKeyAction $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defenum PromptKeyAction (:submit) (:close) (:ignore)
          :examples $ []
          :schema $ quote EnumDef
        'PromptPluginNodeCursorState $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defenum PromptPluginNodeCursorState
            :plugin respo.schema/Component (List respo.schema/CoordKey) Dynamic
          :examples $ []
          :schema $ quote EnumDef
        'alert-actions-plugin $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def alert-actions-plugin (impl-traits PluginNodeCursorState %alert-actions)
          :examples $ []
          :schema $ quote EnumDef
        'as-options-map $ %{} 'CodeEntry (:doc "|在选项开放边界校验为 Tag 键 map，nil 视为空。")
          :code $ quote $ defn as-options-map (value)
            if (nil? value) ({})
              if (map? value)
                filter-map-kv value $ fn (option-key option-value)
                  if (tag? option-key) (MapEntryDecision :keep option-key option-value)
                    raise $ str "|respo-alerts expected option keys as tags, got: " option-key
                raise $ str "|respo-alerts expected options as a map, got: " $ type-of value
          :examples $ []
          :schema $ quote $ Fn T
            -> $ Map Tag Dynamic
            :generics T
          :tests $ [] $ %{} 'TestEntry (:name |rejects-non-tag-option-key)
            :code $ quote $ assert= true
              try
                do
                  as-options-map $ {} $ |text |hello
                  , false
                fn (message)
                  hint-fn $ Fn String $ -> Bool
                  starts-with? message "|respo-alerts expected option keys as tags"
            :tags $ #{} :unit
        'as-prompt-task $ %{} 'CodeEntry (:doc "|把调用方提供的开放回调适配为接收文本的提示任务。")
          :code $ quote $ defn as-prompt-task (f)
            fn (text)
              hint-fn $ Fn String $ -> Unit
              f text
              , &unit
          :examples $ []
          :schema $ quote $ Fn
            Fn String $ -> R
            -> $ Fn String $ -> Unit
            :generics R
        'as-state-map $ %{} 'CodeEntry (:doc "|在组件状态的开放边界确认其为 map。")
          :code $ quote $ defn as-state-map (value)
            if (map? value) value $ raise $ str "|respo-alerts expected component state as a map, got: " (type-of value)
          :examples $ []
          :schema $ quote $ Fn Dynamic
            -> $ Map Dynamic Dynamic
        'clear-prompt-task! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn clear-prompt-task! (cursor)
            reset! *prompt-tasks $ &map:dissoc @*prompt-tasks cursor
            , &unit
          :examples $ []
          :schema $ quote $ Fn (List respo.schema/CoordKey) (-> Unit) (:features :state)
        'close-modal! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn close-modal! (self d!)
            hint-fn $ Fn PluginNodeCursorState
              Fn *dispatch-op $ -> R
              -> R
              :generics R
            match self $
              :plugin node cursor state
              d! $ :: :states cursor $ &map:assoc (as-state-map state) :show? false
          :examples $ []
          :schema $ quote $ Fn PluginNodeCursorState
            Fn *dispatch-op $ -> R
            -> R
            :generics R
        'comp-alert-modal $ %{} 'CodeEntry
          :doc "||Alert modal component. Shows a simple message dialog with a confirm button. Used internally by use-alert hook."
          :code $ quote $ defcomp comp-alert-modal (options show? on-read! on-close!)
            []
              effect-focus (str |. schema/confirm-button-name) show?
              effect-fade show?
              create-list-element :div
                {} $ :style $ {} (:position :absolute)
                if show?
                  [] $ [] 0 $ div
                    {}
                      :class-name $ str-spaced css/fullscreen css/center style-modal-backdrop & $ read-field-list options :backdrop-class
                      :style $ read-style options :backdrop-style
                      :on-click $ fn (e d!)
                        hint-fn $ Fn respo.schema/RespoEvent
                          Fn *dispatch-op $ -> Unit
                          -> Unit
                          :features :js-ffi
                        let
                            event $ :event e
                          if (js-present? event)
                            browser/event-stop-propagation! $ browser/event-host event
                            , &unit
                          on-close! d!
                          on-read! (event-fields e) d!
                        , &unit
                    div
                      {}
                        :class-name $ str-spaced style-modal-card css/global css/column & $ read-field-list options :card-class
                        :style $ read-style options :card-style
                        :on-click $ fn (e d!) &unit
                      div ({})
                        <> $ read-text options :text |Alert!
                      space-y 8
                      div
                        {} $ :class-name css/row-parted
                        span $ {}
                        button
                          {}
                            :class-name $ str-spaced css/button schema/confirm-button-name & $ read-field-list options :confirm-class
                            :style $ read-style options :confirm-style
                            :on-click $ fn (e d!)
                              hint-fn $ Fn respo.schema/RespoEvent
                                Fn *dispatch-op $ -> Unit
                                -> Unit
                                :features :js-ffi
                              on-close! d!
                              on-read! (event-fields e) d!
                              , &unit
                          <> $ read-text options :confirm-text |Read
                    comp-esc-listener show? on-close!
                  []
          :examples $ [] $ quote
            comp-alert-modal
              {} $ :text "|Hello World"
              , show? on-read! on-close!
          :schema $ quote $ Fn Dynamic Bool Dynamic
            Fn
              Fn *dispatch-op $ -> Unit
              -> Unit
            -> respo.schema/Component
            :features :js-ffi
        'comp-confirm-modal $ %{} 'CodeEntry
          :doc "||Confirm modal component. Shows a dialog with confirm and cancel buttons. Used internally by use-confirm hook."
          :code $ quote $ defcomp comp-confirm-modal (options show? on-confirm! on-close!)
            []
              effect-focus (str |. schema/confirm-button-name) show?
              effect-fade show?
              create-list-element :div
                {} $ :style $ {} (:position :absolute)
                if show?
                  [] $ [] 0 $ div
                    {}
                      :class-name $ str-spaced css/fullscreen css/center style-modal-backdrop & $ read-field-list options :backdrop-class
                      :style $ read-style options :backdrop-style
                      :on-click $ dispatch-fn (e d!) (on-close! d!)
                    div
                      {}
                        :class-name $ str-spaced css/global css/column style-modal-card & $ read-field-list options :card-class
                        :style $ read-style options :card-style
                        :on-click $ fn (e d!) &unit
                      div ({})
                        <> $ read-text options :text |Confirm?
                      space-y 8
                      div
                        {} $ :class-name css/row-parted
                        span $ {}
                        button
                          {}
                            :class-name $ str-spaced css/button schema/confirm-button-name & $ read-field-list options :confirm-class
                            :on-click $ dispatch-fn (e d!)
                              let
                                  event $ event-fields e
                                if (contains? event :type)
                                  do (on-confirm! event d!) (on-close! d!)
                                  raise "|Confirm event requires :type"
                          <> $ read-text options :button-text |Confirm
                    comp-esc-listener show? on-close!
                  []
          :examples $ [] $ quote
            comp-confirm-modal
              {} $ :text "|Are you sure?"
              , show? on-confirm! on-close!
          :schema $ quote $ Fn (Map Tag OptionsValue) Bool
            Fn (Map Tag Dynamic)
              Fn *dispatch-op $ -> Unit
              -> Unit
            Fn
              Fn *dispatch-op $ -> Unit
              -> Unit
            -> respo.schema/Component
            :generics OptionsValue
        'comp-drawer $ %{} 'CodeEntry
          :doc "||Drawer component. Renders a sliding panel from the side with custom content via :render function in options."
          :code $ quote $ defcomp comp-drawer (options show? on-close)
            [] (effect-slide show?)
              create-list-element :div
                {} $ :style $ &merge
                  assert-type
                    {} $ :position :absolute
                    Map Tag respo-ui.schema/InlineStyleValue
                  read-style options :container-style
                if show?
                  [] $ [] 0 $ div
                    {}
                      :class-name $ str-spaced css/fullscreen style-drawer-backdrop & $ read-field-list options :backdrop-class
                      :style $ read-style options :backdrop-style
                      :on-click $ fn (e d!)
                        hint-fn $ Fn respo.schema/RespoEvent
                          Fn *dispatch-op $ -> Unit
                          -> Unit
                        let
                            event $ .-event e
                          if (js-present? event)
                            browser/event-stop-propagation! $ browser/event-host event
                            , &unit
                          on-close d!
                    create-list-element :div
                      {}
                        :class-name $ str-spaced css/global css/column style-drawer-card & $ read-field-list options :card-class
                        :style $ &merge
                          assert-type
                            {} $ :padding 0
                            Map Tag respo-ui.schema/InlineStyleValue
                          read-style options :style
                        :on-click $ fn (e d!) &unit
                      concat
                        match (read-field options :title)
                          (:some title)
                            [] $ [] 0 $ div
                              {} $ :class-name $ str-spaced css/center css/font-fancy! style-modal-title
                              <> $ read-text-value title
                          (:none) ([])
                        [] $ [] 1 $ match (read-field options :render)
                          (:some render) (render on-close)
                          (:none)
                            match (read-field options :render-body)
                              (:some render) (render on-close)
                              (:none) (<> "|TODO render body")
                    comp-esc-listener show? on-close
                  []
          :examples $ [] $ quote
            comp-drawer
              {} (:title |Settings)
                :render $ fn (on-close)
                  div ({}) (<> |Content)
              , show? on-close
          :schema $ quote $ Fn Dynamic Bool
            Fn
              Fn *dispatch-op $ -> Unit
              -> Unit
            -> respo.schema/Component
            :features :js-ffi
        'comp-esc-listener $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-esc-listener (show? on-close!)
            [] (effect-keydown)
              div $ {}
                :style $ {} $ :position :absolute
                :on-keydown $ fn (e d!)
                  hint-fn $ Fn respo.schema/RespoEvent
                    Fn *dispatch-op $ -> Unit
                    -> Unit
                  if (fn? on-close!) (on-close! d!)
                    raise "|comp-esc-listener expects on-close! to be a function"
          :examples $ []
          :schema $ quote $ Fn Bool
            Fn
              Fn *dispatch-op $ -> Unit
              -> Unit
            -> respo.schema/Component
        'comp-modal $ %{} 'CodeEntry
          :doc "||Modal component. Renders a modal dialog with custom content via :render function in options."
          :code $ quote $ defcomp comp-modal (options show? on-close)
            [] (effect-fade show?)
              create-list-element :div
                {} $ :style $ &merge
                  assert-type
                    {} $ :position :absolute
                    Map Tag respo-ui.schema/InlineStyleValue
                  read-style options :container-style
                if show?
                  [] $ [] 0 $ div
                    {}
                      :class-name $ str-spaced css/fullscreen css/center style-modal-backdrop & $ read-field-list options :backdrop-class
                      :style $ read-style options :backdrop-style
                      :on-click $ fn (e d!)
                        hint-fn $ Fn respo.schema/RespoEvent
                          Fn *dispatch-op $ -> Unit
                          -> Unit
                        let
                            event $ .-event e
                          if (js-present? event)
                            browser/event-stop-propagation! $ browser/event-host event
                            , &unit
                          on-close d!
                    create-list-element :div
                      {}
                        :class-name $ str-spaced css/global css/column style-modal-card & $ read-field-list options :card-class
                        :style $ &merge
                          assert-type
                            {} $ :padding 0
                            Map Tag respo-ui.schema/InlineStyleValue
                          read-style options :style
                          read-style options :card-style
                        :on-click $ fn (e d!) &unit
                      concat
                        match (read-field options :title)
                          (:some title)
                            [] $ [] 0 $ div
                              {} $ :class-name $ str-spaced css/center css/font-fancy! style-modal-title
                              <> $ read-text-value title
                          (:none) ([])
                        [] $ [] 1 $ match (read-field options :render)
                          (:some render) (render on-close)
                          (:none)
                            match (read-field options :render-body)
                              (:some render) (render on-close)
                              (:none) (<> "|TODO render body")
                    comp-esc-listener show? on-close
                  []
          :examples $ [] $ quote
            comp-modal
              {} (:title |Dialog)
                :render $ fn (on-close)
                  div ({}) (<> |Content)
              , show? on-close
          :schema $ quote $ Fn Dynamic Bool
            Fn
              Fn *dispatch-op $ -> Unit
              -> Unit
            -> respo.schema/Component
            :features :js-ffi
        'comp-modal-menu $ %{} 'CodeEntry
          :doc "||Modal menu component. Shows a modal dialog with a list of selectable items. Define items via :items in options."
          :code $ quote $ defcomp comp-modal-menu (options show? on-close! on-select!)
            [] (effect-fade show?)
              create-list-element :div ({})
                if show?
                  [] $ [] 0 $ div
                    {}
                      :class-name $ str-spaced css/fullscreen css/center style-modal-backdrop & $ read-field-list options :backdrop-class
                      :style $ read-style options :backdrop-style
                      :on-click $ fn (e d!)
                        hint-fn $ Fn respo.schema/RespoEvent
                          Fn *dispatch-op $ -> Unit
                          -> Unit
                        let
                            event $ .-event e
                          if (js-present? event)
                            browser/event-stop-propagation! $ browser/event-host event
                            , &unit
                          on-close! d!
                    create-list-element :div
                      {}
                        :class-name $ str-spaced css/global css/column style-modal-card & $ read-field-list options :card-class
                        :style $ merge-optional-styles
                          {} $ :padding 0
                          read-style options :style
                        :on-click $ fn (e d!) &unit
                      concat
                        match (read-field options :title)
                          (:some title)
                            [] $ [] 0 $ div
                              {}
                                :class-name $ str-spaced css/row-parted css/font-fancy!
                                :style $ {} (:padding "|4px 8px")
                                  :color $ hsl 0 0 70
                              span $ {}
                              <> $ read-text-value title
                              span $ {} (:inner-text |Clear) (:class-name style-clear)
                                :on-click $ fn (e d!)
                                  hint-fn $ Fn respo.schema/RespoEvent
                                    Fn *dispatch-op $ -> Unit
                                    -> Unit
                                  on-select! nil d!
                          (:none) ([])
                        [] $ [] 1 $ list-> ({})
                          ->
                            match (read-field options :items)
                              (:some items) (menu-items items)
                              (:none) (raise "|Menu items must be List")
                            map $ fn (info)
                              let
                                  item $ cond
                                      enum? info
                                      , info
                                    (map? info)
                                      :: :item (read-field-or info :value |) (read-field-or info :display |)
                                    true $ raise "|Unknown menu item"
                                match item $
                                  :item v l
                                  [] v $ div
                                    {} (:class-name style-menu-item)
                                      :on-click $ fn (e d!)
                                        hint-fn $ Fn respo.schema/RespoEvent
                                          Fn *dispatch-op $ -> Unit
                                          -> Unit
                                        on-select! item d!
                                    if (string? l) (<> l) l
                    comp-esc-listener show? on-close!
                  []
          :examples $ [] $ quote
            comp-modal-menu
              {} (:title |Choose)
                :items $ [] (:: :item |a |A) (:: :item |b |B)
              , show? on-close! on-select!
          :schema $ quote $ Fn Options Bool
            Fn
              Fn *dispatch-op $ -> Unit
              -> Unit
            Fn Dynamic
              Fn *dispatch-op $ -> Unit
              -> Unit
            -> respo.schema/Component
            :generics Options
            :features :js-ffi
        'comp-prompt-modal $ %{} 'CodeEntry
          :doc "||Prompt modal component. Shows a dialog with text input field and validation. Used internally by use-prompt hook."
          :code $ quote $ defcomp comp-prompt-modal (states options show? on-finish! on-close!)
            let
                initial-text $ read-text options :initial |
                cursor $ read-state-cursor states
                state $ as-state-map $ read-field-or states :data
                  {} (:text initial-text) (:failure |)
                text $ read-field-or state :text initial-text
                check-submit! $ fn (d!)
                  hint-fn $ Fn
                    Fn *dispatch-op $ -> Unit
                    -> Unit
                  let
                      validator $ read-field-or options :validator false
                      result $ if (fn? validator)
                        prompt-validation-error $ validator text
                        , |
                    if
                      not $ blank? result
                      d! $ :: :states cursor $ &map:assoc (as-state-map state) :failure result
                      do
                        on-finish! (decode-map-as text 'String) d!
                        on-close! d!
                        d! $ :: :states cursor $ {}
              []
                effect-select (str |. schema/input-box-name) show?
                effect-fade show?
                create-list-element :div
                  {} $ :style $ {} (:position :absolute)
                  if show?
                    [] $ [] 0 $ div
                      {}
                        :class-name $ str-spaced css/fullscreen css/center style-modal-backdrop & $ read-field-list options :backdrop-class
                        :style $ &merge
                          assert-type
                            {} $ :line-height |32px
                            Map Tag respo-ui.schema/InlineStyleValue
                          read-style options :backdrop-style
                        :on-click $ fn (e d!)
                          hint-fn $ Fn respo.schema/RespoEvent
                            Fn *dispatch-op $ -> Unit
                            -> Unit
                          on-close! d!
                          d! $ :: :states cursor $ {}
                      div
                        {}
                          :class-name $ str-spaced css/global css/column style-modal-card & $ read-field-list options :card-class
                          :style $ read-style options :card-style
                          :on-click $ fn (e d!) &unit
                        div ({})
                          <> $ read-text options :text "|Type in text"
                        space-y 8
                        let
                            props $ DomProps :value (Some text) :on-input
                              Some $ fn (e d!)
                                hint-fn $ Fn respo.schema/RespoEvent
                                  Fn *dispatch-op $ -> Unit
                                  -> Unit
                                d! $ :: :states cursor $ &map:assoc (as-state-map state) :text
                                  :text $ read-dom-prompt-event e
                              , :on-keydown
                                Some $ fn (e d!)
                                  hint-fn $ Fn respo.schema/RespoEvent
                                    Fn *dispatch-op $ -> Unit
                                    -> Unit
                                  let
                                      event-info $ read-dom-prompt-event e
                                      action $ prompt-key-action event-info $ if (read-field-or options :multiline? false) true false
                                    match action
                                      (:submit)
                                        do
                                          .prevent-default! $ :event e
                                          check-submit! d!
                                      (:close)
                                        do (on-close! d!)
                                          d! $ :: :states cursor $ {}
                                      (:ignore) &unit
                                    , &unit
                                , :placeholder $ match (read-field options :placeholder)
                                  (:some placeholder)
                                    js-nullish->option $ prompt-placeholder placeholder
                                  (:none) None
                          if (read-field-or options :multiline? false)
                            textarea $ struct-with props
                              :class-name $ Some $ str-spaced schema/input-box-name css/textarea & (read-field-list options :input-class)
                              :style $ Some $ &merge
                                assert-type
                                  {} (:width |100%) (:min-height 120) (:max-height |50vh)
                                  Map Tag respo-ui.schema/InlineStyleValue
                                read-style options :input-style
                            input $ struct-with props
                              :class-name $ Some $ str-spaced schema/input-box-name css/input & (read-field-list options :input-class)
                              :style $ Some $ &merge
                                assert-type
                                  {} $ :width |100%
                                  Map Tag respo-ui.schema/InlineStyleValue
                                read-style options :input-style
                        space-y 16
                        div
                          {} $ :class-name css/row-parted
                          let
                              failure $ read-text state :failure |
                            if
                              not $ blank? failure
                              span $ {}
                                :style $ &merge ui/flex $ {} (:color :red) (:line-height |20px)
                                :inner-text failure
                              span $ {}
                          button
                            {}
                              :class-name $ str-spaced css/button & $ read-field-list options :confirm-class
                              :on-click $ fn (e d!)
                                hint-fn $ Fn respo.schema/RespoEvent
                                  Fn *dispatch-op $ -> Unit
                                  -> Unit
                                check-submit! d!
                            <> $ read-text options :button-text |Finish
                      comp-esc-listener show? on-close!
                    []
          :examples $ [] $ quote
            comp-prompt-modal states
              {} (:text "|Enter name") (:placeholder |name)
              , show? on-finish! on-close!
          :schema $ quote $ Fn Dynamic Dynamic Bool
            Fn String
              Fn *dispatch-op $ -> Unit
              -> R
            Fn
              Fn *dispatch-op $ -> Unit
              -> Unit
            -> respo.schema/Component
            :generics R
            :features :js-ffi
        'confirm-actions-plugin $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def confirm-actions-plugin (impl-traits PluginNodeCursorState %confirm-actions)
          :examples $ []
          :schema $ quote EnumDef
        'drawer-actions-plugin $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def drawer-actions-plugin (impl-traits PluginNodeCursorState %drawer-actions)
          :examples $ []
          :schema $ quote EnumDef
        'effect-fade $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defeffect effect-fade (show?) (action el at-place?)
            match action
              :before-update $ if show?
                match
                  browser/element-first-child $ browser/element-host el
                  (:none) &unit
                  (:some target)
                    let
                        cloned $ browser/element-clone target true
                        card-option $ browser/element-first-child cloned
                      browser/document-append-body! cloned
                      browser/set-timeout!
                        fn () (browser/element-set-style! cloned |opacity |0)
                          match card-option
                            (:none) &unit
                            (:some card)
                              do (browser/element-set-style! card |transitionDuration |240ms) (browser/element-set-style! card |transform "|scale(0.94) translate(0px,-20px)")
                          , &unit
                        , 10
                      browser/set-timeout!
                        fn () $ browser/element-remove! cloned
                        , 240
                      , &unit
                , &unit
              :update $ if show?
                match
                  browser/element-first-child $ browser/element-host el
                  (:none) &unit
                  (:some target)
                    let
                        card-option $ browser/element-first-child target
                      browser/element-set-style! target |opacity |0
                      match card-option
                        (:none) &unit
                        (:some card) (browser/element-set-style! card |transform "|scale(0.94) translate(0px,-20px)")
                      browser/set-timeout!
                        fn () (browser/element-set-style! target |transitionDuration |240ms) (browser/element-set-style! target |opacity |1)
                          match card-option
                            (:none) &unit
                            (:some card)
                              do (browser/element-set-style! card |transitionDuration |240ms) (browser/element-set-style! card |transform "|scale(1) translate(0px,0px)")
                          , &unit
                        , 10
                      , &unit
                , &unit
              _ &unit
          :examples $ []
          :schema $ quote $ Fn Bool (-> respo.schema/Effect) (:features :js-ffi)
        'effect-focus $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defeffect effect-focus (query show?) (action el at-place?)
            match action
              :update $ if (string? query)
                if (= true show?) (focus-element! query) &unit
                raise "|effect-focus expected a query string"
              _ &unit
          :examples $ []
          :schema $ quote $ Fn String Bool (-> respo.schema/Effect) (:features :js-ffi)
        'effect-keydown $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defeffect effect-keydown () (action el at?)
            match action
              :mount $ let
                  listener $ fn (event)
                    hint-fn $ Fn browser/EventHost $ -> Unit
                    if
                      =
                        browser/keyboard-event-key $ browser/keyboard-event-host event
                        , |Escape
                      &let
                        _dispatched $ browser/element-dispatch-event! (browser/element-host el) (browser/mouse-event-from-event event)
                        , &unit
                      , &unit
                browser/add-event-listener! |keydown listener
                aset el |_listener listener
                , &unit
              :unmount $ let
                  listener $ browser/event-listener-host $ aget el |_listener
                browser/remove-event-listener! |keydown listener
                js-delete el |_listener
                , &unit
              _ &unit
          :examples $ []
          :schema $ quote $ Fn (-> respo.schema/Effect) (:features :js-ffi)
        'effect-select $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defeffect effect-select (query show?) (action el *local)
            match action
              :update $ if (string? query)
                if (= true show?) (select-element! query) &unit
                raise "|effect-select expected a query string"
              _ &unit
          :examples $ []
          :schema $ quote $ Fn String Bool (-> respo.schema/Effect) (:features :js-ffi)
        'effect-slide $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defeffect effect-slide (show?) (action el at-place?)
            match action
              :before-update $ if show?
                match
                  browser/element-first-child $ browser/element-host el
                  (:none) &unit
                  (:some target)
                    let
                        cloned $ browser/element-clone target true
                        card-option $ browser/element-first-child cloned
                      browser/document-append-body! cloned
                      browser/set-timeout!
                        fn () (browser/element-set-style! cloned |opacity |0)
                          match card-option
                            (:none) &unit
                            (:some card)
                              do (browser/element-set-style! card |transitionDuration |240ms) (browser/element-set-style! card |transform "|translate(100%,0px)")
                          , &unit
                        , 10
                      browser/set-timeout!
                        fn () $ browser/element-remove! cloned
                        , 240
                      , &unit
                , &unit
              :update $ if show?
                match
                  browser/element-first-child $ browser/element-host el
                  (:none) &unit
                  (:some target)
                    let
                        card-option $ browser/element-first-child target
                      browser/element-set-style! target |opacity |0
                      match card-option
                        (:none) &unit
                        (:some card) (browser/element-set-style! card |transform "|translate(100%,0px)")
                      browser/set-timeout!
                        fn () (browser/element-set-style! target |transitionDuration |240ms) (browser/element-set-style! target |opacity |1)
                          match card-option
                            (:none) &unit
                            (:some card)
                              do (browser/element-set-style! card |transitionDuration |240ms) (browser/element-set-style! card |transform "|translate(0px,0px)")
                          , &unit
                        , 10
                      , &unit
                , &unit
              _ &unit
          :examples $ []
          :schema $ quote $ Fn Bool (-> respo.schema/Effect) (:features :js-ffi)
        'event-fields $ %{} 'CodeEntry
          :doc "|At the raw DOM/legacy callback boundary, validate nominal RespoEvent or a Tag-key Map; retain legacy field semantics and rejection behavior."
          :code $ quote $ defn event-fields (event)
            if (struct? event)
              struct-match event
                respo.schema/RespoEvent checked $ .to-map checked
                _ _ $ raise "|Expected RespoEvent at DOM boundary"
              decode-map-as event $ Map Tag Dynamic
          :examples $ []
          :schema $ quote $ Fn Dynamic
            -> $ Map Tag Dynamic
          :tags $ #{} :internal
        'menu-items $ %{} 'CodeEntry
          :doc "|Validate the required list container without guessing the heterogeneous item payload or replacing invalid input with an empty list."
          :code $ quote $ defn menu-items (value)
            if (list? value)
              assert-type value $ List Dynamic
              raise "|Menu items must be List"
          :examples $ []
          :schema $ quote $ Fn T
            -> $ List Dynamic
            :generics T
          :tests $ []
            %{} 'TestEntry (:name |mixed-items-preserved)
              :code $ quote $ let
                  items $ [] (:: :item |a |A)
                    {} (:value :b) (:display |B)
                assert= items $ menu-items items
                assert= ([])
                  menu-items $ []
              :tags $ #{} :unit
            %{} 'TestEntry (:name |missing-and-invalid-containers-rejected)
              :code $ quote $ each
                [] nil 42 true :item |item $ {}
                fn (value)
                  assert= true $ try
                    do (menu-items value) false
                    fn (message)
                      hint-fn $ Fn String $ -> Bool
                      = message "|Menu items must be List"
              :tags $ #{} :unit
        'modal-actions-plugin $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def modal-actions-plugin (impl-traits PluginNodeCursorState %modal-actions)
          :examples $ []
          :schema $ quote EnumDef
        'modal-menu-actions-plugin $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def modal-menu-actions-plugin (impl-traits PluginNodeCursorState %modal-menu-actions)
          :examples $ []
          :schema $ quote EnumDef
        'prompt-actions-plugin $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def prompt-actions-plugin (impl-traits PromptPluginNodeCursorState %prompt-actions)
          :examples $ []
          :schema $ quote EnumDef
        'prompt-event-text $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn prompt-event-text (event)
            let
                event-info $ read-prompt-event event
              :text event-info
          :examples $ []
          :schema $ quote $ Fn (Map Tag Dynamic) (-> String) (:features :js-ffi)
          :tests $ []
            %{} 'TestEntry (:name |reads-respo-event-map)
              :code $ quote $ is
                = |hello $ prompt-event-text $ {} (:value |hello)
              :tags $ #{} :regression :unit
            %{} 'TestEntry (:name |defaults-missing-value)
              :code $ quote $ is
                = | $ prompt-event-text $ {}
              :tags $ #{} :regression :unit
        'prompt-key-action $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn prompt-key-action (event multiline?)
            hint-fn $ Fn PromptEvent Bool $ -> PromptKeyAction
            if
              = 27 $ :keycode event
              PromptKeyAction :close
              if
                and
                  = 13 $ :keycode event
                  not= 229 $ :keycode event
                  or (not multiline?) (:meta? event) (:ctrl? event)
                PromptKeyAction :submit
                PromptKeyAction :ignore
          :examples $ []
          :schema $ quote $ Fn PromptEvent Bool (-> PromptKeyAction)
          :tests $ [] $ %{} 'TestEntry (:name |keyboard-matrix)
            :code $ quote $ let
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
        'prompt-placeholder $ %{} 'CodeEntry
          :doc "|Validate the optional String placeholder before constructing DOM props."
          :code $ quote $ defn prompt-placeholder (value)
            if (nil? value) nil $ if (string? value) (assert-type value String) (raise "|Prompt placeholder must be String or nil")
          :examples $ []
          :schema $ quote $ Fn T
            -> $ JsNullish String
            :generics T
          :tests $ []
            %{} 'TestEntry (:name |absent-remains-nil)
              :code $ quote $ assert= nil (prompt-placeholder nil)
              :tags $ #{} :unit
            %{} 'TestEntry (:name |empty-string-preserved)
              :code $ quote $ assert= | (prompt-placeholder |)
              :tags $ #{} :unit
            %{} 'TestEntry (:name |string-preserved)
              :code $ quote $ assert= |Example (prompt-placeholder |Example)
              :tags $ #{} :unit
            %{} 'TestEntry (:name |invalid-values-rejected)
              :code $ quote $ each
                [] 42 true :Example ({}) ([])
                fn (value)
                  assert= true $ try
                    do (prompt-placeholder value) false
                    fn (message)
                      hint-fn $ Fn String $ -> Bool
                      , true
              :tags $ #{} :unit
        'prompt-validation-error $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn prompt-validation-error (value)
            if (string? value) value |
          :examples $ []
          :schema $ quote $ Fn T (-> String) (:generics T) (:features :js-ffi)
          :tests $ []
            %{} 'TestEntry (:name |accepts-string)
              :code $ quote $ is
                = |Required $ prompt-validation-error |Required
              :tags $ #{} :unit
            %{} 'TestEntry (:name |rejects-absence)
              :code $ quote $ is
                = | $ prompt-validation-error nil
              :tags $ #{} :regression :unit
        'read-dom-prompt-event $ %{} 'CodeEntry
          :doc "|Read the concrete Respo event without converting it into a heterogeneous map."
          :code $ quote $ defn read-dom-prompt-event (event)
            if (struct? event)
              struct-match event
                respo.schema/RespoEvent checked $ PromptEvent :text
                  let
                      raw $ :value checked
                    if (string? raw) raw |
                  , :keycode
                    .unwrap-or
                      js-nullish->option $ :key-code checked
                      .unwrap-or
                        js-nullish->option $ :keycode checked
                        , 0
                    , :meta?
                      .unwrap-or
                        js-nullish->option $ :meta? checked
                        , false
                      , :ctrl? $ .unwrap-or
                        js-nullish->option $ :ctrl? checked
                        , false
                _ _ $ raise "|Expected RespoEvent at DOM boundary"
              read-prompt-event $ event-fields event
          :examples $ []
          :schema $ quote $ Fn respo.schema/RespoEvent (-> PromptEvent)
        'read-prompt-event $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn read-prompt-event (event)
            let
                raw-text $ or (read-field-or event :value false) |
                text $ if (string? raw-text) raw-text |
                raw-key $ or (read-field-or event :key-code false)
                  or (read-field-or event :keycode false) 0
                keycode $ if (number? raw-key) raw-key 0
                raw-meta $ read-field-or event :meta? false
                meta? $ if (bool? raw-meta) raw-meta false
                raw-ctrl $ read-field-or event :ctrl? false
                ctrl? $ if (bool? raw-ctrl) raw-ctrl false
              PromptEvent :text text :keycode keycode :meta? meta? :ctrl? ctrl?
          :examples $ []
          :schema $ quote $ Fn (Map Tag Dynamic) (-> PromptEvent) (:features :js-ffi)
          :tests $ []
            %{} 'TestEntry (:name |reads-key-modifiers)
              :code $ quote $ let
                  event $ read-prompt-event $ {} (:value |hello) (:keycode 13) (:meta? true) (:ctrl? true)
                is $ = 13 $ :keycode event
                is $ :meta? event
                is $ :ctrl? event
            %{} 'TestEntry (:name |prefers-canonical-key-code)
              :code $ quote $ let
                  event $ read-prompt-event $ {} (:key-code 27) (:keycode 13)
                is $ = 27 $ :keycode event
        'read-state-cursor $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn read-state-cursor (states)
            decode-map-as
              read-field-or states :cursor $ []
              List respo.schema/CoordKey
          :examples $ []
          :schema $ quote $ Fn T
            -> $ List respo.schema/CoordKey
            :generics T
        'read-style $ %{} 'CodeEntry
          :doc "|读取样式选项，nil 视为空 Map。沿原 guard 校验 Tag 键，每个值受检解码为 respo-ui.schema/InlineStyleValue（标量或 Option）；单属性 nil 应改为 Option :none。"
          :code $ quote $ defn read-style (options k)
            let
                value $ read-field-or options k $ {}
              if (nil? value) ({})
                if (map? value)
                  filter-map-kv value $ fn (style-key style-value)
                    if (tag? style-key)
                      MapEntryDecision :keep style-key $ decode-map-as style-value respo-ui.schema/InlineStyleValue
                      raise $ str "|respo-alerts expected style keys as tags, got: " style-key
                  raise $ str "|respo-alerts expected a style map at " k "|, got: " $ type-of value
          :examples $ []
          :schema $ quote $ Fn T Tag
            -> $ Map Tag respo-ui.schema/InlineStyleValue
            :generics T
          :tests $ [] $ %{} 'TestEntry (:name |checked-inline-style-values)
            :code $ quote $ let
                style $ {} (:color |red) (:padding 8) (:display :flex)
                  :opacity $ Some 0.5
                  :transform None
              assert= style $ read-style
                {} $ :style style
                , :style
              assert= ({})
                read-style ({}) :style
              assert= true $ try
                do
                  read-style
                    {} $ :style $ {} (:color true)
                    , :style
                  , false
                fn (message)
                  hint-fn $ Fn String $ -> Bool
                  , true
              assert= true $ try
                do
                  read-style
                    {} $ :style $ {} (:color |red) (:transform nil)
                    , :style
                  , false
                fn (message)
                  hint-fn $ Fn String $ -> Bool
                  , true
            :tags $ #{} :unit
        'read-text $ %{} 'CodeEntry (:doc "|读取文本选项并校验为字符串，nil 时使用默认文本。")
          :code $ quote $ defn read-text (options k default-text)
            &let
              v $ read-field-or options k default-text
              if (nil? v) default-text $ if (string? v) v $ raise
                str "|respo-alerts expected text at " k "|, got: " $ type-of v
          :examples $ []
          :schema $ quote $ Fn T Tag String (-> String) (:generics T)
        'read-text-value $ %{} 'CodeEntry (:doc "|把可选的显示值转成文本，nil 为空字符串。")
          :code $ quote $ defn read-text-value (value)
            if (string? value) value $ if (nil? value) | $ str value
          :examples $ []
          :schema $ quote $ Fn T (-> String) (:generics T)
        'show-modal! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn show-modal! (self d!)
            hint-fn $ Fn PluginNodeCursorState
              Fn *dispatch-op $ -> R
              -> R
              :generics R
            match self $
              :plugin node cursor state
              d! $ :: :states cursor $ &map:assoc (as-state-map state) :show? true
          :examples $ []
          :schema $ quote $ Fn PluginNodeCursorState
            Fn *dispatch-op $ -> R
            -> R
            :generics R
        'store-prompt-task! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn store-prompt-task! (cursor task)
            reset! *prompt-tasks $ &map:assoc @*prompt-tasks cursor task
            , &unit
          :examples $ []
          :schema $ quote $ Fn (List respo.schema/CoordKey)
            Fn String $ -> Unit
            -> Unit
            :features :state
        'style-clear $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-clear
            {}
              |& $ {} (:font-size 10) (:cursor :pointer)
                :color $ hsl 270 80 70
                :opacity 0.6
              |&:hover $ {} $ :opacity 1
          :examples $ []
          :schema $ quote String
        'style-drawer-backdrop $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-drawer-backdrop
            {} $ |& $ &merge style/backdrop
              {} $ :padding 0
          :examples $ []
          :schema $ quote String
        'style-drawer-card $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-drawer-card
            {} $ |& $ &merge style/card
              {} (:line-height |32px) (:height |100%) (:max-height |100vh) (:margin-right 0) (:border-radius |0px) (:max-width |50vw) (:width |24vw) (:min-width 360) (:box-shadow "|-2px 0px 24px 2px hsla(0,0%,0%,0.2)") (:transition-property |opacity,transform)
          :examples $ []
          :schema $ quote String
        'style-menu-item $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-menu-item
            {}
              |& $ {}
                :border-top $ str "|1px solid " $ hsl 0 0 90
                :padding "|0 16px"
                :cursor :pointer
                :white-space :nowrap
                :line-height |40px
              |&:hover $ {} $ :background-color (hsl 0 0 97)
          :examples $ []
          :schema $ quote String
        'style-modal-backdrop $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-modal-backdrop
            {} $ |& style/backdrop
          :examples $ []
          :schema $ quote String
        'style-modal-card $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-modal-card
            {} $ |& $ &merge style/card
              {} (:line-height |32px) (:box-shadow "|0px 2px 24px 0px hsl(0,0%,0%,0.2)") (:transition-property |opacity,transform)
          :examples $ []
          :schema $ quote String
        'style-modal-title $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-modal-title
            {} $ |& $ {} (:padding |8px)
          :examples $ []
          :schema $ quote String
        'take-prompt-task! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn take-prompt-task! (cursor)
            let
                task $ get @*prompt-tasks cursor
              clear-prompt-task! cursor
              , task
          :examples $ []
          :schema $ quote $ Fn (List respo.schema/CoordKey)
            -> $ Option $ Fn String (-> Unit)
            :features :state
          :tests $ [] $ %{} 'TestEntry (:name |persists-across-renders)
            :code $ quote $ let
                cursor $ [] :prompt-test
                *called $ ref |
                callback $ fn (text)
                  hint-fn $ Fn String $ -> Unit
                  reset! *called text
                  , &unit
              store-prompt-task! cursor callback
              (take-prompt-task! cursor) .fold
                fn () &unit
                fn (task)
                  hint-fn $ Fn
                    Fn String $ -> Unit
                    -> Unit
                  task |hello
              is $ = |hello @*called
              is $
                take-prompt-task! cursor
                , .none?
            :tags $ #{} :regression :unit
        'use-alert $ %{} 'CodeEntry
          :doc "||Alert dialog hook. Shows a simple message box. Returns a plugin object with .show method to display the alert."
          :code $ quote $ defplugin use-alert (states options)
            let
                options $ as-options-map options
                cursor $ read-state-cursor states
                state $ as-state-map $ read-field-or states :data
                  match (read-field options :text)
                    (:some text)
                      {} (:show? false) (:text text)
                    (:none)
                      {} $ :show? false
                on-read $ read-field-or options :on-read $ fn (e d!)
                  d! $ :: :states cursor $ &map:assoc (as-state-map state) :show? false
                node $ comp-alert-modal
                  match (read-field state :text)
                    (:some text) (&map:assoc options :text text)
                    (:none) (&map:dissoc options :text)
                  = true $ read-field-or state :show? false
                  , on-read $ fn (d!)
                    d! $ :: :states cursor $ &map:assoc (as-state-map state) :show? false
              %:: alert-actions-plugin :plugin node cursor state
          :examples $ [] $ quote
            let
                alert-plugin $ use-alert (>> states :alert)
                  {} $ :text |demo
              button
                {} $ :on-click $ fn (e d!) (.show alert-plugin d! None)
                <> |Show
          :schema $ quote $ Fn (Map Dynamic Dynamic) (Map Dynamic Dynamic) (-> respo-alerts.core/alert-actions-plugin)
        'use-confirm $ %{} 'CodeEntry
          :doc "|Build a Confirm plugin from Respo states and options. Call (.show plugin dispatch! (fn () ...)) with the ordinary single-Enum dispatcher; the success task is zero-argument. Rendering does not invoke the success task. Closing clears it. The old two-argument cursor/data dispatcher is not supported."
          :code $ quote $ defplugin use-confirm (states options)
            let
                options $ as-options-map options
                cursor $ read-state-cursor states
                state $ as-state-map $ read-field-or states :data
                  {} (:show? false) (:text |)
                node $ comp-confirm-modal
                  if
                    blank? $ read-text state :text |
                    , options $ &map:assoc options :text $ read-text state :text |
                  = true $ read-field-or state :show? false
                  dispatch-fn (e d!)
                    d! $ :: :states cursor $ &map:assoc (as-state-map state) :show? false
                    (take-prompt-task! cursor) .fold
                      fn () &unit
                      fn (task)
                        hint-fn $ Fn
                          Fn String $ -> Unit
                          -> Unit
                        task |
                    , &unit
                  dispatch-fn (d!) (clear-prompt-task! cursor)
                    d! $ :: :states cursor $ &map:assoc (as-state-map state) :show? false
                    , &unit
              %:: confirm-actions-plugin :plugin node cursor state
          :examples $ []
            quote $ let
                confirm-plugin $ use-confirm (>> states :confirm)
                  {} $ :text "|确认删除？"
              button
                {} $ :on-click $ fn (e d!)
                  .show confirm-plugin d! $ fn () $ println |confirmed
                <> |Delete
            quote $ let
                confirm-plugin $ use-confirm (>> states :confirm)
                  {} $ :text "|Default text"
              button
                {} (:class-name css/button)
                  :on-click $ fn (e d!)
                    .show-with-text confirm-plugin d! "|Confirm with dynamic text?" $ fn () $ println |Confirmed!
                <> "|Show with text"
          :schema $ quote $ Fn (Map Dynamic Dynamic) (Map Dynamic Dynamic) (-> respo-alerts.core/confirm-actions-plugin) (:features :state)
        'use-drawer $ %{} 'CodeEntry
          :doc "||Drawer hook. Shows a panel sliding from the side. Use :render function in options to customize content. Supports :style for width and other styles."
          :code $ quote $ defn use-drawer (states options)
            let
                cursor $ read-state-cursor states
                state $ as-state-map $ read-field-or states :data
                  {} $ :show? false
                node $ comp-drawer options
                  = true $ read-field-or state :show? false
                  fn (d!)
                    d! $ :: :states cursor $ &map:assoc (as-state-map state) :show? false
              %:: drawer-actions-plugin :plugin node cursor state
          :examples $ [] $ quote
            let
                drawer-plugin $ use-drawer (>> states :drawer)
                  {} (:title |Settings)
                    :style $ {} $ :width 400
                    :render $ fn (on-close)
                      div ({}) (<> "|Settings content")
              button
                {} $ :on-click $ fn (e d!) (.show drawer-plugin d!)
                <> "|Open Drawer"
          :schema $ quote $ Fn (Map Dynamic Dynamic) (Map Dynamic Dynamic) (-> respo-alerts.core/drawer-actions-plugin)
        'use-modal $ %{} 'CodeEntry
          :doc "||Modal dialog hook. Shows a modal with custom content. Use :render function in options to customize content. Returns a plugin object."
          :code $ quote $ defn use-modal (states options)
            let
                cursor $ read-state-cursor states
                state $ as-state-map $ read-field-or states :data
                  {} $ :show? false
                node $ comp-modal options
                  = true $ read-field-or state :show? false
                  fn (d!)
                    d! $ :: :states cursor $ &map:assoc (as-state-map state) :show? false
              %:: modal-actions-plugin :plugin node cursor state
          :examples $ [] $ quote
            let
                modal-plugin $ use-modal (>> states :modal)
                  {} (:title |Demo)
                    :render $ fn (on-close)
                      div ({}) (<> |Content)
              button
                {} $ :on-click $ fn (e d!) (.show modal-plugin d!)
                <> |Open
          :schema $ quote $ Fn (Map Dynamic Dynamic) (Map Dynamic Dynamic) (-> respo-alerts.core/modal-actions-plugin)
        'use-modal-menu $ %{} 'CodeEntry
          :doc "||Modal menu hook. Shows a modal dialog with a list of options. Define options via :items and handle selection via :on-result in options."
          :code $ quote $ defn use-modal-menu (states options)
            let
                cursor $ read-state-cursor states
                state $ as-state-map $ read-field-or states :data
                  {} $ :show? false
                node $ comp-modal-menu options
                  = true $ read-field-or state :show? false
                  dispatch-fn (d!)
                    d! $ :: :states cursor $ &map:assoc (as-state-map state) :show? false
                  dispatch-fn (result d!)
                    let
                        on-result $ read-field-or options :on-result false
                      if (fn? on-result) (on-result result d!) (raise "|modal menu expects :on-result to be a function")
                    d! $ :: :states cursor $ &map:assoc (as-state-map state) :show? false
              %:: modal-menu-actions-plugin :plugin node cursor state
          :examples $ [] $ quote
            let
                menu-plugin $ use-modal-menu (>> states :menu)
                  {} (:title "|选择")
                    :items $ [] (:: :item |a |A) (:: :item |b |B)
                    :on-result $ fn (result d!) (println |selected: result)
              button
                {} $ :on-click $ fn (e d!) (.show menu-plugin d!)
                <> |Menu
          :schema $ quote $ Fn (Map Dynamic Dynamic) (Map Dynamic Dynamic) (-> respo-alerts.core/modal-menu-actions-plugin)
        'use-prompt $ %{} 'CodeEntry
          :doc "||Prompt dialog hook. Shows a dialog with text input. Returns a plugin object, call .show with a callback function to receive user input text."
          :code $ quote $ defplugin use-prompt (states options)
            let
                options $ as-options-map options
                cursor $ read-state-cursor states
                state $ as-state-map $ read-field-or states :data
                  {} $ :show? false
                node $ comp-prompt-modal (>> states :modal) options
                  = true $ read-field-or state :show? false
                  fn (text d!)
                    hint-fn $ Fn String
                      Fn *dispatch-op $ -> Unit
                      -> Unit
                    d! $ :: :states cursor $ &map:assoc (as-state-map state) :show? false
                    (take-prompt-task! cursor) .fold
                      fn () &unit
                      fn (task)
                        hint-fn $ Fn
                          Fn String $ -> Unit
                          -> Unit
                        task text
                  dispatch-fn (d!) (clear-prompt-task! cursor)
                    d! $ :: :states cursor $ &map:assoc (as-state-map state) :show? false
              %:: prompt-actions-plugin :plugin node cursor state
          :examples $ [] $ quote
            let
                prompt-plugin $ use-prompt (>> states :prompt)
                  {} (:text "|请输入名称") (:placeholder |name)
              button
                {} $ :on-click $ fn (e d!)
                  .show prompt-plugin d! $ fn (text) (println |got: text)
                <> |Input
          :schema $ quote $ Fn (Map Dynamic Dynamic) (Map Dynamic Dynamic) (-> respo-alerts.core/prompt-actions-plugin) (:features :state)
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns respo-alerts.core
          :require
            respo.util.format :refer $ hsl
            respo.schema :refer $ DomProps
            respo-ui.core :as ui
            respo-ui.css :as css
            respo.core :refer $ defcomp defplugin list-> <> >> div button textarea span input a defeffect dispatch-fn create-list-element
            respo.css :refer $ defstyle
            respo.comp.space :refer $ space-x space-y
            respo-alerts.config :refer $ dev?
            respo-alerts.style :as style
            respo-alerts.schema :as schema
            calcit.test :refer $ is
            respo-alerts.util :refer $ focus-element! select-element! read-field read-field-or read-field-list merge-optional-styles
            js-ffi.browser :as browser
    'respo-alerts.main $ %{} 'FileEntry
      :defs $ {}
        '*reel $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defref *reel (typed/new-reel schema/store)
          :examples $ []
          :schema $ quote $ Ref
            typed/State schema/Op $ Map Dynamic Dynamic
        'dispatch! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn dispatch! (op)
            when
              and config/dev? $ match op
                (:states ignored-cursor ignored-state) false
                _ true
              shared/console-log! $ str |Dispatch: op
            match op
              (:states cursor value)
                record-op! $ schema/Op :states
                  decode-map-as cursor $ List respo.schema/CoordKey
                  , value
              (:hydrate-storage value)
                record-op! $ schema/Op :hydrate-storage $ if (map? value) value (raise "|hydrated store must be a Map")
              _ $ shared/console-warn! $ str "|Unknown op:" op
            , &unit
          :examples $ []
          :schema $ quote $ Fn AnyEnum (-> Unit) (:features :js-ffi :state) (:open :decode)
        'main! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn main! ()
            println "|Running mode:" $ if config/dev? |dev |release
            if config/dev? $ load-console-formatter!
            render-app!
            add-watch! *reel :changes $ fn (reel prev) (render-app!)
            listen-devtools! |a on-control!
            ; js/window.addEventListener |beforeunload $ fn (event) (persist-storage!)
            ; js/setInterval persist-storage! 60000
            ; let
              (raw (js/localStorage.getItem (:storage-key config/site)))
              when (some? raw)
                dispatch! :hydrate-storage $ parse-cirru-edn raw
            println "|App started."
          :examples $ []
          :schema $ quote $ Fn (-> Unit) (:features :io :js-ffi :state)
        'mount-target $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn mount-target ()
            (browser/query-selector |.app) .unwrap
          :examples $ []
          :schema $ quote $ Fn (-> browser/DomElementHost) (:features :js-ffi)
        'on-control! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn on-control! (control)
            reset! *reel $ typed/apply-control updater @*reel control
            , &unit
          :examples $ []
          :schema $ quote $ Fn typed/Control (-> Unit) (:features :state)
        'persist-storage! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn persist-storage! ()
            browser/storage-set!
                get config/site :storage-key
                , .unwrap
              format-cirru-edn $ :store @*reel
          :examples $ []
          :schema $ quote $ Fn (-> Unit) (:features :state)
        'record-op! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn record-op! (action)
            reset! *reel $ typed/record-op updater @*reel action (generate-id!) (shared/now-ms)
            , &unit
          :examples $ []
          :schema $ quote $ Fn schema/Op (-> Unit) (:features :js-ffi :state)
        'reload! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn reload! ()
            if (nil? build-errors)
              do (remove-watch! *reel :changes) (clear-cache!)
                add-watch! *reel :changes $ fn (reel prev) (render-app!)
                reset! *reel $ reloaded-reel
                hud! |ok~ |Ok
              hud! |error build-errors
            , &unit
          :examples $ []
          :schema $ quote $ Fn (-> Unit) (:features :io :js-ffi :state)
        'reloaded-reel $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn reloaded-reel ()
            typed/refresh updater
              assert-type @*reel $ typed/State schema/Op $ Map Dynamic Dynamic
              assert-type schema/store $ Map Dynamic Dynamic
          :examples $ []
          :schema $ quote $ Fn
            -> $ typed/State schema/Op $ Map Dynamic Dynamic
            :features :state
        'render-app! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn render-app! ()
            render-with!
              narrow-element $ mount-target
              fn () $ comp-container @*reel on-control!
              fn (op)
                if (enum? op) (dispatch! op) (raise "|alert renderer operation must be an Enum")
          :examples $ []
          :schema $ quote $ Fn (-> Unit) (:features :io :js-ffi :state)
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns respo-alerts.main
          :require
            respo.core :refer $ render-with! clear-cache! realize-ssr!
            respo.ffi.browser :refer $ narrow-element
            respo-alerts.comp.container :refer $ comp-container
            respo-alerts.updater :refer $ updater
            respo-alerts.schema :as schema
            reel.util :refer $ listen-devtools!
            reel.typed :as typed
            respo-alerts.config :as config
            |./calcit.build-errors :default build-errors
            |bottom-tip :default hud!
            js-ffi.browser :as browser
            js-ffi.shared :as shared
    'respo-alerts.schema $ %{} 'FileEntry
      :defs $ {}
        'Op $ %{} 'CodeEntry
          :doc "|Ops the demo app dispatches. Bound to Respo's :dispatch-op slot, so d! in handlers is checked against it; :states carries component state written by alerts' plugins."
          :code $ quote $ defenum Op
            :states (List respo.schema/CoordKey) Dynamic
            :hydrate-storage $ Map Dynamic Dynamic
          :examples $ []
          :schema $ quote EnumDef
        'confirm-button-name $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def confirm-button-name |respo-confirm-button
          :examples $ []
          :schema $ quote String
        'input-box-name $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def input-box-name |respo-prompt-input
          :examples $ []
          :schema $ quote String
        'store $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def store
            {}
              :states $ {}
              :content |
          :examples $ []
          :schema $ quote Map
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns respo-alerts.schema
    'respo-alerts.style $ %{} 'FileEntry
      :defs $ {}
        'backdrop $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def backdrop
            {}
              :background-color $ hsl 0 30 10 0.6
              :position :fixed
              :z-index |999
              :padding 16
          :examples $ []
          :schema $ quote $ Map Tag respo-ui.schema/StyleValue
        'button $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def button
            &merge ui/button $ {} (:border-radius |4px) (:background-color :white)
              :border-color $ hsl 240 60 90
          :examples $ []
          :schema $ quote $ Map Tag respo-ui.schema/StyleValue
        'card $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def card
            {}
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
          :schema $ quote $ Map Tag respo-ui.schema/StyleValue
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns respo-alerts.style
          :require
            respo.util.format :refer $ hsl
            respo-ui.core :as ui
    'respo-alerts.trigger $ %{} 'FileEntry
      :defs $ {}
        'comp-trigger $ %{} 'CodeEntry
          :doc "||Trigger component. Wraps an element with visual feedback when active. Uses :trigger-style and :trigger-active-style from options."
          :code $ quote $ defcomp comp-trigger (show? el options)
            div
              {} $ :class-name style-trigger-container
              , el $ div $ {}
                :class-name $ if show? (str-spaced style-trigger style-trigger-active) style-trigger
                :style $ merge-optional-styles
                  read-field-or options :trigger-style $ {}
                  if show?
                    read-field-or options :trigger-active-style $ {}
                    , nil
          :examples $ [] $ quote
            comp-trigger show?
              button
                {} $ :on-click on-click
                <> "|Click me"
              {}
                :trigger-style $ {} $ :color |blue
                :trigger-active-style $ {} $ :color |red
          :schema $ quote $ Fn Bool respo.schema/Element Dynamic (-> respo.schema/Component)
        'style-trigger $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-trigger
            {} $ |& $ {} (:border-radius |50%) (:position :absolute) (:transform "|translate(-50%,-50%)") (:top |50%) (:left |50%) (:width 0) (:height 0) (:transition-duration |300ms) (:transition-delay |100ms) (:pointer-events :none) (:z-index |900) (:opacity 1)
              :background $ str "|radial-gradient(" (hsl 0 0 70 0.8) "|0% ," (hsl 0 0 60 0.0) "| 50%)"
          :examples $ []
          :schema $ quote String
        'style-trigger-active $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-trigger-active
            {} $ |& $ {} (:width 2000) (:height 2000) (:opacity 0.3) (:transition-delay |0ms)
          :examples $ []
          :schema $ quote String
        'style-trigger-container $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-trigger-container
            {} $ |& $ {} (:display :inline-block) (:position :relative)
          :examples $ []
          :schema $ quote String
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns respo-alerts.trigger
          :require
            respo.core :refer $ defcomp defplugin list-> <> >> div button textarea span input a defeffect
            respo-ui.css :as css
            respo.util.format :refer $ hsl
            respo.css :refer $ defstyle
            respo-alerts.util :refer $ read-field read-field-or merge-optional-styles
    'respo-alerts.updater $ %{} 'FileEntry
      :defs $ {} $ 'updater
        %{} 'CodeEntry (:doc |)
          :code $ quote $ defn updater (store op op-id op-time)
            as-state-map $ match op
              (:states cursor s) (update-states store cursor s)
              (:hydrate-storage d) d
              _ $ do
                shared/console-warn! $ str "|Unknown op:" op
                , store
          :examples $ []
          :schema $ quote $ Fn (Map Dynamic Dynamic) respo-alerts.schema/Op String Number
            -> $ Map Dynamic Dynamic
            :features :js-ffi
          :tests $ [] $ %{} 'TestEntry (:name |typed-demo-state-operations)
            :code $ quote $ let
                restored $ {}
                  :states $ {}
                  |legacy-field 0
                updated $ updater restored
                  respo-alerts.schema/Op :states ([] :panel |prompt 7)
                    {} $ :open? false
                  , |event 1
              assert= restored $ updater respo-alerts.schema/store (respo-alerts.schema/Op :hydrate-storage restored) |restore 0
              assert= (Some 0) (get updated |legacy-field)
              assert= (Result :ok false)
                get-in updated $ [] :states :panel |prompt 7 :data :open?
            :tags $ #{} :unit
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns respo-alerts.updater
          :require
            respo.cursor :refer $ update-states
            respo-alerts.config :refer $ dev?
            js-ffi.shared :as shared
            respo-alerts.core :refer $ as-state-map
    'respo-alerts.util $ %{} 'FileEntry
      :defs $ {}
        'focus-element! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn focus-element! (query)
            match (browser/query-selector query)
              (:none) &unit
              (:some target) (browser/element-focus! target)
          :examples $ []
          :schema $ quote $ Fn String (-> Unit) (:features :js-ffi)
        'merge-optional-styles $ %{} 'CodeEntry
          :doc "|Validate optional style containers, preserving nil and right-hand overrides. CSS key/value validation remains owned by Respo."
          :code $ quote $ defn merge-optional-styles (base active)
            let
                checked-base $ if (nil? base) None $ if (map? base)
                  Some $ decode-map-as base $ Map Dynamic Dynamic
                  raise "|Style must be Map or nil"
                checked-active $ if (nil? active) None $ if (map? active)
                  Some $ decode-map-as active $ Map Dynamic Dynamic
                  raise "|Style must be Map or nil"
              match checked-base
                (:none)
                  match checked-active
                    (:none) nil
                    (:some a) a
                (:some b)
                  match checked-active
                    (:none) b
                    (:some a) (&merge b a)
          :examples $ []
          :schema $ quote $ Fn B A
            -> $ JsNullish $ Map Dynamic Dynamic
            :generics B A
          :tests $ []
            %{} 'TestEntry (:name |missing-stays-nil)
              :code $ quote $ assert= nil (merge-optional-styles nil nil)
              :tags $ #{} :unit
            %{} 'TestEntry (:name |one-sided-and-empty-styles)
              :code $ quote $ let
                  style $ {} $ :color |red
                assert= style $ merge-optional-styles nil style
                assert= style $ merge-optional-styles style nil
                assert= ({})
                  merge-optional-styles ({}) nil
              :tags $ #{} :unit
            %{} 'TestEntry (:name |active-overrides-base)
              :code $ quote $ assert=
                {} (:color |red) (:display |flex)
                merge-optional-styles
                  {} (:color |blue) (:display |flex)
                  {} $ :color |red
              :tags $ #{} :unit
            %{} 'TestEntry (:name |invalid-containers-rejected)
              :code $ quote $ each
                [] 42 true :style |red $ []
                fn (value)
                  assert= true $ try
                    do (merge-optional-styles value nil) false
                    fn (message)
                      hint-fn $ Fn String $ -> Bool
                      = message "|Style must be Map or nil"
                  assert= true $ try
                    do (merge-optional-styles nil value) false
                    fn (message)
                      hint-fn $ Fn String $ -> Bool
                      = message "|Style must be Map or nil"
              :tags $ #{} :unit
        'read-field $ %{} 'CodeEntry
          :doc "|Reads an optional field from a Struct or Map. A missing field, a nil value, or a value that is neither container reads as None."
          :code $ quote $ defn read-field (value field)
            let
                found $ if (struct? value)
                  get (&struct:to-map value) field
                  if (map? value) (get value field) None
              match found
                (:some v)
                  if (nil? v) None $ Some v
                (:none) None
          :examples $ []
          :schema $ quote $ Fn T Tag
            -> $ Option Dynamic
            :generics T
          :tests $ []
            %{} 'TestEntry (:name |reads-map)
              :code $ quote $ assert= (Some 1)
                read-field
                  {} $ :value 1
                  , :value
            %{} 'TestEntry (:name |handles-absent-options)
              :code $ quote $ do
                assert= None $ read-field nil :trigger-style
                assert= None $ read-field
                  {} $ :style nil
                  , :style
                assert= (Some false)
                  read-field
                    {} $ :show? false
                    , :show?
            %{} 'TestEntry (:name |reads-struct-fields)
              :code $ quote $ let
                  Probe $ defstruct Probe $ :value Number
                  probe $ %{} Probe $ :value 1
                assert= (Some 1) (read-field probe :value)
                assert= None $ read-field probe :missing
        'read-field-list $ %{} 'CodeEntry
          :doc "|The field as a list of zero or one value, for spreading into `str-spaced`."
          :code $ quote $ defn read-field-list (value field)
            match (read-field value field)
              (:some v) ([] v)
              (:none) ([])
          :examples $ []
          :schema $ quote $ Fn T Tag
            -> $ List Dynamic
            :generics T
          :tests $ [] $ %{} 'TestEntry (:name |lists-present-values)
            :code $ quote $ do
              assert= ([] |a)
                read-field-list
                  {} $ :class |a
                  , :class
              assert= ([])
                read-field-list
                  {} $ :class nil
                  , :class
              assert= |x $ str-spaced |x & $ read-field-list ({}) :class
        'read-field-or $ %{} 'CodeEntry
          :doc "|The field, or `fallback` when it is missing or nil."
          :code $ quote $ defn read-field-or (value field fallback)
            match (read-field value field)
              (:some v) v
              (:none) fallback
          :examples $ []
          :schema $ quote $ Fn T Tag Fallback (-> Dynamic) (:generics T Fallback)
          :tests $ [] $ %{} 'TestEntry (:name |falls-back-on-absence)
            :code $ quote $ do
              assert= 0 $ read-field-or ({}) :n 0
              assert= 0 $ read-field-or
                {} $ :n nil
                , :n 0
              assert= false $ read-field-or
                {} $ :n false
                , :n 0
        'select-element! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn select-element! (query)
            match (browser/query-selector query)
              (:none) &unit
              (:some target)
                browser/element-select! $ browser/selectable-element-host target
          :examples $ []
          :schema $ quote $ Fn String (-> Unit) (:features :js-ffi)
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns respo-alerts.util
          :require $ js-ffi.browser :as browser
