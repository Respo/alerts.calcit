
{} (:package |respo-alerts)
  :configs $ {} (:init-fn |respo-alerts.main/main!) (:reload-fn |respo-alerts.main/reload!) (:version |0.10.4)
    :modules $ [] |lilac/ |memof/ |respo.calcit/ |respo-ui.calcit/ |reel.calcit/
  :entries $ {}
  :files $ {}
    |respo-alerts.comp.container $ %{} :FileEntry
      :defs $ {}
        |comp-container $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1767546522349) (:by |sync)
            :data $ {}
              |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |defcomp)
              |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |comp-container)
              |X $ %{} :Expr (:at 1767546522349) (:by |sync)
                :data $ {}
                  |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |reel)
              |Z $ %{} :Expr (:at 1767546522349) (:by |sync)
                :data $ {}
                  |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |let)
                  |V $ %{} :Expr (:at 1767546522349) (:by |sync)
                    :data $ {}
                      |T $ %{} :Expr (:at 1767546522349) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |store)
                          |V $ %{} :Expr (:at 1767546522349) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |:store)
                              |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |reel)
                      |V $ %{} :Expr (:at 1767546522349) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |states)
                          |V $ %{} :Expr (:at 1767546522349) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |:states)
                              |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |store)
                      |X $ %{} :Expr (:at 1767546522349) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |state)
                          |V $ %{} :Expr (:at 1767546522349) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |either)
                              |V $ %{} :Expr (:at 1767546522349) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |:data)
                                  |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |states)
                              |X $ %{} :Expr (:at 1767546522349) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |{})
                                  |V $ %{} :Expr (:at 1767546522349) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |:selected)
                                      |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text "|\"")
                                  |X $ %{} :Expr (:at 1767546522349) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |:show-modal?)
                                      |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |false)
                                  |Z $ %{} :Expr (:at 1767546522349) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |:show-modal-menu?)
                                      |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |false)
                  |X $ %{} :Expr (:at 1767546522349) (:by |sync)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |div)
                      |V $ %{} :Expr (:at 1767546522349) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |{})
                          |V $ %{} :Expr (:at 1767546522349) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |:class-name)
                              |V $ %{} :Expr (:at 1767546522349) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |str-spaced)
                                  |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |css/global)
                                  |X $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |css/fullscreen)
                                  |Z $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |css/column)
                          |X $ %{} :Expr (:at 1767546522349) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |:style)
                              |V $ %{} :Expr (:at 1767546522349) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |{})
                                  |V $ %{} :Expr (:at 1767546522349) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |:padding)
                                      |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |20)
                      |X $ %{} :Expr (:at 1767546522349) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |div)
                          |V $ %{} :Expr (:at 1767546522349) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |{})
                          |X $ %{} :Expr (:at 1767546522349) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |a)
                              |V $ %{} :Expr (:at 1767546522349) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |{})
                                  |V $ %{} :Expr (:at 1767546522349) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |:href)
                                      |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text "|\"https://respo-mvc.org/")
                                  |X $ %{} :Expr (:at 1767546522349) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |:target)
                                      |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text "|\"_blank")
                              |X $ %{} :Expr (:at 1767546522349) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |img)
                                  |V $ %{} :Expr (:at 1767546522349) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |{})
                                      |V $ %{} :Expr (:at 1767546522349) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |:class-name)
                                          |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |style-logo)
                                      |X $ %{} :Expr (:at 1767546522349) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |:src)
                                          |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text "|\"https://cos-sh.tiye.me/cos-up/bb4c2755050318e864b56f59145d726e-SubstractRespo.png")
                      |Z $ %{} :Expr (:at 1767546522349) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |=<)
                          |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |nil)
                          |X $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |40)
                      |b $ %{} :Expr (:at 1767546522349) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |comp-hooks-usages)
                          |V $ %{} :Expr (:at 1767546522349) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |>>)
                              |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |states)
                              |X $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |:hooks)
                      |d $ %{} :Expr (:at 1767546522349) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |=<)
                          |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |nil)
                          |X $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |40)
                      |f $ %{} :Expr (:at 1767546522349) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |comp-controlled-modals)
                          |V $ %{} :Expr (:at 1767546522349) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |>>)
                              |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |states)
                              |X $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |:controlled)
                      |h $ %{} :Expr (:at 1767546522349) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |=<)
                          |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |nil)
                          |X $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |40)
                      |j $ %{} :Expr (:at 1767546522349) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |comp-demo-trigger)
                          |V $ %{} :Expr (:at 1767546522349) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |>>)
                              |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |states)
                              |X $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |:trigger)
                      |l $ %{} :Expr (:at 1767546522349) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |when)
                          |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |dev?)
                          |X $ %{} :Expr (:at 1767546522349) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |comp-inspect)
                              |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text "|\"states")
                              |X $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |states)
                              |Z $ %{} :Expr (:at 1767546522349) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |{})
                                  |V $ %{} :Expr (:at 1767546522349) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |:bottom)
                                      |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |0)
                      |n $ %{} :Expr (:at 1767546522349) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |when)
                          |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |dev?)
                          |X $ %{} :Expr (:at 1767546522349) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |comp-reel)
                              |V $ %{} :Expr (:at 1767546522349) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |>>)
                                  |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |states)
                                  |X $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |:reel)
                              |X $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |reel)
                              |Z $ %{} :Expr (:at 1767546522349) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |{})
          :examples $ []
        |comp-controlled-modals $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1767546522349) (:by |sync)
            :data $ {}
              |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |defcomp)
              |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |comp-controlled-modals)
              |X $ %{} :Expr (:at 1767546522349) (:by |sync)
                :data $ {}
                  |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |states)
              |Z $ %{} :Expr (:at 1767546522349) (:by |sync)
                :data $ {}
                  |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |let)
                  |V $ %{} :Expr (:at 1767546522349) (:by |sync)
                    :data $ {}
                      |T $ %{} :Expr (:at 1767546522349) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |demo-modal)
                          |V $ %{} :Expr (:at 1767546522349) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |use-modal)
                              |V $ %{} :Expr (:at 1767546522349) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |>>)
                                  |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |states)
                                  |X $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |:modal)
                              |X $ %{} :Expr (:at 1767546522349) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |{})
                                  |V $ %{} :Expr (:at 1767546522349) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |:title)
                                      |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text "|\"demo")
                                  |X $ %{} :Expr (:at 1767546522349) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |:style)
                                      |V $ %{} :Expr (:at 1767546522349) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |{})
                                          |V $ %{} :Expr (:at 1767546522349) (:by |sync)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |:width)
                                              |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |400)
                                  |Z $ %{} :Expr (:at 1767546522349) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |:container-style)
                                      |V $ %{} :Expr (:at 1767546522349) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |{})
                                  |b $ %{} :Expr (:at 1767546522349) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |:backdrop-style)
                                      |V $ %{} :Expr (:at 1767546522349) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |{})
                                  |d $ %{} :Expr (:at 1767546522349) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |:render)
                                      |V $ %{} :Expr (:at 1767546522349) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |fn)
                                          |V $ %{} :Expr (:at 1767546522349) (:by |sync)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |on-close)
                                          |X $ %{} :Expr (:at 1767546522349) (:by |sync)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |div)
                                              |V $ %{} :Expr (:at 1767546522349) (:by |sync)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |{})
                                              |X $ %{} :Expr (:at 1767546522349) (:by |sync)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |<>)
                                                  |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text "|\"Place for child content")
                                              |Z $ %{} :Expr (:at 1767546522349) (:by |sync)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |button)
                                                  |V $ %{} :Expr (:at 1767546522349) (:by |sync)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |{})
                                                      |V $ %{} :Expr (:at 1767546522349) (:by |sync)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |:class-name)
                                                          |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |css/button)
                                                      |X $ %{} :Expr (:at 1767546522349) (:by |sync)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |:inner-text)
                                                          |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text "|\"Close")
                                                      |Z $ %{} :Expr (:at 1767546522349) (:by |sync)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |:on-click)
                                                          |V $ %{} :Expr (:at 1767546522349) (:by |sync)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |fn)
                                                              |V $ %{} :Expr (:at 1767546522349) (:by |sync)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |e)
                                                                  |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |d!)
                                                              |X $ %{} :Expr (:at 1767546522349) (:by |sync)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |on-close)
                                                                  |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |d!)
                      |V $ %{} :Expr (:at 1767546522349) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |demo-modal-menu)
                          |V $ %{} :Expr (:at 1767546522349) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |use-modal-menu)
                              |V $ %{} :Expr (:at 1767546522349) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |>>)
                                  |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |states)
                                  |X $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |:modal-menu)
                              |X $ %{} :Expr (:at 1767546522349) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |{})
                                  |V $ %{} :Expr (:at 1767546522349) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |:title)
                                      |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text "|\"Demo")
                                  |X $ %{} :Expr (:at 1767546522349) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |:style)
                                      |V $ %{} :Expr (:at 1767546522349) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |{})
                                          |V $ %{} :Expr (:at 1767546522349) (:by |sync)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |:width)
                                              |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |300)
                                  |Z $ %{} :Expr (:at 1767546522349) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |:items)
                                      |V $ %{} :Expr (:at 1767546522349) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |[])
                                          |V $ %{} :Expr (:at 1767546522349) (:by |sync)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |::)
                                              |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |:item)
                                              |X $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text "|\"a")
                                              |Z $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text "|\"A")
                                          |X $ %{} :Expr (:at 1767546522349) (:by |sync)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |::)
                                              |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |:item)
                                              |X $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text "|\"b")
                                              |Z $ %{} :Expr (:at 1767546522349) (:by |sync)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |div)
                                                  |V $ %{} :Expr (:at 1767546522349) (:by |sync)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |{})
                                                  |X $ %{} :Expr (:at 1767546522349) (:by |sync)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |<>)
                                                      |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text "|\"B")
                                  |b $ %{} :Expr (:at 1767546522349) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |:on-result)
                                      |V $ %{} :Expr (:at 1767546522349) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |fn)
                                          |V $ %{} :Expr (:at 1767546522349) (:by |sync)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |result)
                                              |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |d!)
                                          |X $ %{} :Expr (:at 1767546522349) (:by |sync)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |println)
                                              |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text "|\"got result")
                                              |X $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |result)
                      |X $ %{} :Expr (:at 1767546522349) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |demo-drawer)
                          |V $ %{} :Expr (:at 1767546522349) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |use-drawer)
                              |V $ %{} :Expr (:at 1767546522349) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |>>)
                                  |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |states)
                                  |X $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |:drawer)
                              |X $ %{} :Expr (:at 1767546522349) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |{})
                                  |V $ %{} :Expr (:at 1767546522349) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |:title)
                                      |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text "|\"demo")
                                  |X $ %{} :Expr (:at 1767546522349) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |:style)
                                      |V $ %{} :Expr (:at 1767546522349) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |{})
                                          |V $ %{} :Expr (:at 1767546522349) (:by |sync)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |;)
                                              |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |:width)
                                              |X $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |400)
                                  |Z $ %{} :Expr (:at 1767546522349) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |:container-style)
                                      |V $ %{} :Expr (:at 1767546522349) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |{})
                                  |b $ %{} :Expr (:at 1767546522349) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |:backdrop-style)
                                      |V $ %{} :Expr (:at 1767546522349) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |{})
                                  |d $ %{} :Expr (:at 1767546522349) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |:render)
                                      |V $ %{} :Expr (:at 1767546522349) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |fn)
                                          |V $ %{} :Expr (:at 1767546522349) (:by |sync)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |on-close)
                                          |X $ %{} :Expr (:at 1767546522349) (:by |sync)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |div)
                                              |V $ %{} :Expr (:at 1767546522349) (:by |sync)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |{})
                                              |X $ %{} :Expr (:at 1767546522349) (:by |sync)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |<>)
                                                  |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text "|\"Place for child content")
                                              |Z $ %{} :Expr (:at 1767546522349) (:by |sync)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |button)
                                                  |V $ %{} :Expr (:at 1767546522349) (:by |sync)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |{})
                                                      |V $ %{} :Expr (:at 1767546522349) (:by |sync)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |:class-name)
                                                          |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |css/button)
                                                      |X $ %{} :Expr (:at 1767546522349) (:by |sync)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |:inner-text)
                                                          |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text "|\"Close")
                                                      |Z $ %{} :Expr (:at 1767546522349) (:by |sync)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |:on-click)
                                                          |V $ %{} :Expr (:at 1767546522349) (:by |sync)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |fn)
                                                              |V $ %{} :Expr (:at 1767546522349) (:by |sync)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |e)
                                                                  |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |d!)
                                                              |X $ %{} :Expr (:at 1767546522349) (:by |sync)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |on-close)
                                                                  |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |d!)
                  |X $ %{} :Expr (:at 1767546522349) (:by |sync)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |div)
                      |V $ %{} :Expr (:at 1767546522349) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |{})
                      |X $ %{} :Expr (:at 1767546522349) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |div)
                          |V $ %{} :Expr (:at 1767546522349) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |{})
                          |X $ %{} :Expr (:at 1767546522349) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |<>)
                              |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text "|\"Modal usage")
                      |Z $ %{} :Expr (:at 1767546522349) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |div)
                          |V $ %{} :Expr (:at 1767546522349) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |{})
                              |V $ %{} :Expr (:at 1767546522349) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |:style)
                                  |V $ %{} :Expr (:at 1767546522349) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |{})
                                      |V $ %{} :Expr (:at 1767546522349) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |:padding)
                                          |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text "|\"8px 0px")
                          |X $ %{} :Expr (:at 1767546522349) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |button)
                              |V $ %{} :Expr (:at 1767546522349) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |{})
                                  |V $ %{} :Expr (:at 1767546522349) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |:inner-text)
                                      |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text "|\"show modal")
                                  |X $ %{} :Expr (:at 1767546522349) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |:class-name)
                                      |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |css/button)
                                  |Z $ %{} :Expr (:at 1767546522349) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |:on-click)
                                      |V $ %{} :Expr (:at 1767546522349) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |fn)
                                          |V $ %{} :Expr (:at 1767546522349) (:by |sync)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |e)
                                              |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |d!)
                                          |X $ %{} :Expr (:at 1767546522349) (:by |sync)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |.show)
                                              |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |demo-modal)
                                              |X $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |d!)
                          |Z $ %{} :Expr (:at 1767546522349) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |=<)
                              |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |8)
                              |X $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |nil)
                          |b $ %{} :Expr (:at 1767546522349) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |button)
                              |V $ %{} :Expr (:at 1767546522349) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |{})
                                  |V $ %{} :Expr (:at 1767546522349) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |:inner-text)
                                      |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text "|\"show modal menu")
                                  |X $ %{} :Expr (:at 1767546522349) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |:class-name)
                                      |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |css/button)
                                  |Z $ %{} :Expr (:at 1767546522349) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |:on-click)
                                      |V $ %{} :Expr (:at 1767546522349) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |fn)
                                          |V $ %{} :Expr (:at 1767546522349) (:by |sync)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |e)
                                              |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |d!)
                                          |X $ %{} :Expr (:at 1767546522349) (:by |sync)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |.show)
                                              |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |demo-modal-menu)
                                              |X $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |d!)
                          |d $ %{} :Expr (:at 1767546522349) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |=<)
                              |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |8)
                              |X $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |nil)
                          |f $ %{} :Expr (:at 1767546522349) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |button)
                              |V $ %{} :Expr (:at 1767546522349) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |{})
                                  |V $ %{} :Expr (:at 1767546522349) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |:inner-text)
                                      |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text "|\"show drawer")
                                  |X $ %{} :Expr (:at 1767546522349) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |:class-name)
                                      |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |css/button)
                                  |Z $ %{} :Expr (:at 1767546522349) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |:on-click)
                                      |V $ %{} :Expr (:at 1767546522349) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |fn)
                                          |V $ %{} :Expr (:at 1767546522349) (:by |sync)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |e)
                                              |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |d!)
                                          |X $ %{} :Expr (:at 1767546522349) (:by |sync)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |.show)
                                              |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |demo-drawer)
                                              |X $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |d!)
                          |h $ %{} :Expr (:at 1767546522349) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |.render)
                              |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |demo-modal)
                          |j $ %{} :Expr (:at 1767546522349) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |.render)
                              |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |demo-modal-menu)
                          |l $ %{} :Expr (:at 1767546522349) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |.render)
                              |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |demo-drawer)
          :examples $ []
        |comp-demo-trigger $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1767546522349) (:by |sync)
            :data $ {}
              |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |defcomp)
              |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |comp-demo-trigger)
              |X $ %{} :Expr (:at 1767546522349) (:by |sync)
                :data $ {}
                  |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |states)
              |Z $ %{} :Expr (:at 1767546522349) (:by |sync)
                :data $ {}
                  |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |let)
                  |V $ %{} :Expr (:at 1767546522349) (:by |sync)
                    :data $ {}
                      |T $ %{} :Expr (:at 1767546522349) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |cursor)
                          |V $ %{} :Expr (:at 1767546522349) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |:cursor)
                              |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |states)
                      |V $ %{} :Expr (:at 1767546522349) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |state)
                          |V $ %{} :Expr (:at 1767546522349) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |either)
                              |V $ %{} :Expr (:at 1767546522349) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |:data)
                                  |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |states)
                              |X $ %{} :Expr (:at 1767546522349) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |{})
                                  |V $ %{} :Expr (:at 1767546522349) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |:visible?)
                                      |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |false)
                  |X $ %{} :Expr (:at 1767546522349) (:by |sync)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |div)
                      |V $ %{} :Expr (:at 1767546522349) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |{})
                      |X $ %{} :Expr (:at 1767546522349) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |div)
                          |V $ %{} :Expr (:at 1767546522349) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |{})
                          |X $ %{} :Expr (:at 1767546522349) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |<>)
                              |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text "|\"Trigger")
                      |Z $ %{} :Expr (:at 1767546522349) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |div)
                          |V $ %{} :Expr (:at 1767546522349) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |{})
                          |X $ %{} :Expr (:at 1767546522349) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |comp-trigger)
                              |V $ %{} :Expr (:at 1767546522349) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |:visible?)
                                  |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |state)
                              |X $ %{} :Expr (:at 1767546522349) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |button)
                                  |V $ %{} :Expr (:at 1767546522349) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |{})
                                      |V $ %{} :Expr (:at 1767546522349) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |:inner-text)
                                          |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text "|\"Toggle")
                                      |X $ %{} :Expr (:at 1767546522349) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |:class-name)
                                          |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |css/button)
                                      |Z $ %{} :Expr (:at 1767546522349) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |:on-click)
                                          |V $ %{} :Expr (:at 1767546522349) (:by |sync)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |fn)
                                              |V $ %{} :Expr (:at 1767546522349) (:by |sync)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |e)
                                                  |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |d!)
                                              |X $ %{} :Expr (:at 1767546522349) (:by |sync)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |d!)
                                                  |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |cursor)
                                                  |X $ %{} :Expr (:at 1767546522349) (:by |sync)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |update)
                                                      |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |state)
                                                      |X $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |:visible?)
                                                      |Z $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |not)
          :examples $ []
        |comp-hooks-usages $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1767977189547) (:by |sync)
            :data $ {}
              |T $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |defcomp)
              |V $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |comp-hooks-usages)
              |X $ %{} :Expr (:at 1767977189547) (:by |sync)
                :data $ {}
                  |T $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |states)
              |Z $ %{} :Expr (:at 1767977189547) (:by |sync)
                :data $ {}
                  |T $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |let)
                  |V $ %{} :Expr (:at 1767977189547) (:by |sync)
                    :data $ {}
                      |T $ %{} :Expr (:at 1767977189547) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |alert-plugin)
                          |V $ %{} :Expr (:at 1767977189547) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |use-alert)
                              |V $ %{} :Expr (:at 1767977189547) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |>>)
                                  |V $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |states)
                                  |X $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |:alert)
                              |X $ %{} :Expr (:at 1767977189547) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |{})
                                  |V $ %{} :Expr (:at 1767977189547) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |:title)
                                      |V $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text "|\"demo")
                      |V $ %{} :Expr (:at 1767977189547) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |alert-text-plugin)
                          |V $ %{} :Expr (:at 1767977189547) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |use-alert)
                              |V $ %{} :Expr (:at 1767977189547) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |>>)
                                  |V $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |states)
                                  |X $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |:alert-text)
                              |X $ %{} :Expr (:at 1767977189547) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |{})
                                  |V $ %{} :Expr (:at 1767977189547) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |:title)
                                      |V $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text "|\"demo")
                      |X $ %{} :Expr (:at 1767977189547) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |confirm-plugin)
                          |V $ %{} :Expr (:at 1767977189547) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |use-confirm)
                              |V $ %{} :Expr (:at 1767977189547) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |>>)
                                  |V $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |states)
                                  |X $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |:confirm)
                              |X $ %{} :Expr (:at 1767977189547) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |{})
                                  |V $ %{} :Expr (:at 1767977189547) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |:title)
                                      |V $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text "|\"demo")
                      |Z $ %{} :Expr (:at 1767977189547) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |prompt-plugin)
                          |V $ %{} :Expr (:at 1767977189547) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |use-prompt)
                              |V $ %{} :Expr (:at 1767977189547) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |>>)
                                  |V $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |states)
                                  |X $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |:prompt)
                              |X $ %{} :Expr (:at 1767977189547) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |{})
                                  |V $ %{} :Expr (:at 1767977189547) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |:title)
                                      |V $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text "|\"demo")
                      |b $ %{} :Expr (:at 1767977189547) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |prompt-multilines-plugin)
                          |V $ %{} :Expr (:at 1767977189547) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |use-prompt)
                              |V $ %{} :Expr (:at 1767977189547) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |>>)
                                  |V $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |states)
                                  |X $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |:multilines-prompt)
                              |X $ %{} :Expr (:at 1767977189547) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |{})
                                  |V $ %{} :Expr (:at 1767977189547) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |:title)
                                      |V $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text "|\"demo multilines")
                                  |X $ %{} :Expr (:at 1767977189547) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |:text)
                                      |V $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text "|\"This would be a very long content of alerts, like some prompt... write multiple lines:")
                                  |Z $ %{} :Expr (:at 1767977189547) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |:initial)
                                      |V $ %{} :Expr (:at 1767977189547) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |str)
                                          |V $ %{} :Expr (:at 1767977189547) (:by |sync)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |rand-int)
                                              |V $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |100)
                                  |b $ %{} :Expr (:at 1767977189547) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |:style)
                                      |V $ %{} :Expr (:at 1767977189547) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |{})
                                  |d $ %{} :Expr (:at 1767977189547) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |:input-class)
                                      |V $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |css/font-code!)
                                  |f $ %{} :Expr (:at 1767977189547) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |:multiline?)
                                      |V $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |true)
                      |d $ %{} :Expr (:at 1767977189547) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |prompt-validation-plugin)
                          |V $ %{} :Expr (:at 1767977189547) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |use-prompt)
                              |V $ %{} :Expr (:at 1767977189547) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |>>)
                                  |V $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |states)
                                  |X $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |:validation-prompt)
                              |X $ %{} :Expr (:at 1767977189547) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |{})
                                  |V $ %{} :Expr (:at 1767977189547) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |:titl)
                                      |V $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text "|\"validated")
                                  |X $ %{} :Expr (:at 1767977189547) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |:text)
                                      |V $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text "|\"This would be a very long content of alerts, like some prompt... write multiple lines:")
                                  |Z $ %{} :Expr (:at 1767977189547) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |:initial)
                                      |V $ %{} :Expr (:at 1767977189547) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |str)
                                          |V $ %{} :Expr (:at 1767977189547) (:by |sync)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |rand-int)
                                              |V $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |100)
                                  |b $ %{} :Expr (:at 1767977189547) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |:style)
                                      |V $ %{} :Expr (:at 1767977189547) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |{})
                                  |d $ %{} :Expr (:at 1767977189547) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |:input-class)
                                      |V $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |css/font-code!)
                                  |f $ %{} :Expr (:at 1767977189547) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |:multiline?)
                                      |V $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |true)
                                  |h $ %{} :Expr (:at 1767977189547) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |:validator)
                                      |V $ %{} :Expr (:at 1767977189547) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |fn)
                                          |V $ %{} :Expr (:at 1767977189547) (:by |sync)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |x)
                                          |X $ %{} :Expr (:at 1767977189547) (:by |sync)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |try)
                                              |V $ %{} :Expr (:at 1767977189547) (:by |sync)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |do)
                                                  |V $ %{} :Expr (:at 1767977189547) (:by |sync)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |parse-cirru)
                                                      |V $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |x)
                                                  |X $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |nil)
                                              |X $ %{} :Expr (:at 1767977189547) (:by |sync)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |fn)
                                                  |V $ %{} :Expr (:at 1767977189547) (:by |sync)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |e)
                                                  |X $ %{} :Expr (:at 1767977189547) (:by |sync)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |str)
                                                      |V $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |e)
                  |X $ %{} :Expr (:at 1767977189547) (:by |sync)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |div)
                      |V $ %{} :Expr (:at 1767977189547) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |{})
                      |X $ %{} :Expr (:at 1767977189547) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |div)
                          |V $ %{} :Expr (:at 1767977189547) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |{})
                          |X $ %{} :Expr (:at 1767977189547) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |<>)
                              |V $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text "|\"Hooks")
                      |Z $ %{} :Expr (:at 1767977189547) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |div)
                          |V $ %{} :Expr (:at 1767977189547) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |{})
                          |X $ %{} :Expr (:at 1767977189547) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |comp-trigger)
                              |V $ %{} :Expr (:at 1767977189547) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |.show?)
                                  |V $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |alert-plugin)
                              |X $ %{} :Expr (:at 1767977189547) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |button)
                                  |V $ %{} :Expr (:at 1767977189547) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |{})
                                      |V $ %{} :Expr (:at 1767977189547) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |:inner-text)
                                          |V $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text "|\"show alert")
                                      |X $ %{} :Expr (:at 1767977189547) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |:class-name)
                                          |V $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |css/button)
                                      |Z $ %{} :Expr (:at 1767977189547) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |:on-click)
                                          |V $ %{} :Expr (:at 1767977189547) (:by |sync)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |fn)
                                              |V $ %{} :Expr (:at 1767977189547) (:by |sync)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |e)
                                                  |V $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |d!)
                                              |X $ %{} :Expr (:at 1767977189547) (:by |sync)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |.show)
                                                  |V $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |alert-plugin)
                                                  |X $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |d!)
                          |Z $ %{} :Expr (:at 1767977189547) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |=<)
                              |V $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |8)
                              |X $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |nil)
                          |b $ %{} :Expr (:at 1767977189547) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |button)
                              |V $ %{} :Expr (:at 1767977189547) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |{})
                                  |V $ %{} :Expr (:at 1767977189547) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |:inner-text)
                                      |V $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text "|\"show alert text")
                                  |X $ %{} :Expr (:at 1767977189547) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |:class-name)
                                      |V $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |css/button)
                                  |Z $ %{} :Expr (:at 1767977189547) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |:on-click)
                                      |V $ %{} :Expr (:at 1767977189547) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |fn)
                                          |V $ %{} :Expr (:at 1767977189547) (:by |sync)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |e)
                                              |V $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |d!)
                                          |X $ %{} :Expr (:at 1767977189547) (:by |sync)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |.show)
                                              |V $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |alert-text-plugin)
                                              |X $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |d!)
                                              |Z $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text "|\"DEMO text")
                          |d $ %{} :Expr (:at 1767977189547) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |=<)
                              |V $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |8)
                              |X $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |nil)
                          |f $ %{} :Expr (:at 1767977189547) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |button)
                              |V $ %{} :Expr (:at 1767977189547) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |{})
                                  |V $ %{} :Expr (:at 1767977189547) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |:inner-text)
                                      |V $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text "|\"show confirm")
                                  |X $ %{} :Expr (:at 1767977189547) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |:class-name)
                                      |V $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |css/button)
                                  |Z $ %{} :Expr (:at 1767977189547) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |:on-click)
                                      |V $ %{} :Expr (:at 1767977189547) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |fn)
                                          |V $ %{} :Expr (:at 1767977189547) (:by |sync)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |e)
                                              |V $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |d!)
                                          |X $ %{} :Expr (:at 1767977189547) (:by |sync)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |.show)
                                              |V $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |confirm-plugin)
                                              |X $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |d!)
                                              |Z $ %{} :Expr (:at 1767977189547) (:by |sync)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |fn)
                                                  |V $ %{} :Expr (:at 1767977189547) (:by |sync)
                                                    :data $ {}
                                                  |X $ %{} :Expr (:at 1767977189547) (:by |sync)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |println)
                                                      |V $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text "|\"after confirmed")
                          |h $ %{} :Expr (:at 1767977189547) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |=<)
                              |V $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |8)
                              |X $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |nil)
                          |j $ %{} :Expr (:at 1767977189547) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |button)
                              |V $ %{} :Expr (:at 1767977189547) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |{})
                                  |V $ %{} :Expr (:at 1767977189547) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |:inner-text)
                                      |V $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text "||show confirm with text")
                                  |X $ %{} :Expr (:at 1767977189547) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |:class-name)
                                      |V $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |css/button)
                                  |Z $ %{} :Expr (:at 1767977189547) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |:on-click)
                                      |V $ %{} :Expr (:at 1767977189547) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |fn)
                                          |V $ %{} :Expr (:at 1767977189547) (:by |sync)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |e)
                                              |V $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |d!)
                                          |X $ %{} :Expr (:at 1767977189547) (:by |sync)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |let)
                                              |V $ %{} :Expr (:at 1767977189547) (:by |sync)
                                                :data $ {}
                                                  |T $ %{} :Expr (:at 1767977189547) (:by |sync)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |text)
                                                      |V $ %{} :Expr (:at 1767977189547) (:by |sync)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |js/prompt)
                                                          |V $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text "||Input confirm text")
                                              |X $ %{} :Expr (:at 1767977189547) (:by |sync)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |if)
                                                  |V $ %{} :Expr (:at 1767977189547) (:by |sync)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |not)
                                                      |V $ %{} :Expr (:at 1767977189547) (:by |sync)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |blank?)
                                                          |V $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |text)
                                                  |X $ %{} :Expr (:at 1767977189547) (:by |sync)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |.show-with-text)
                                                      |V $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |confirm-plugin)
                                                      |X $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |d!)
                                                      |Z $ %{} :Expr (:at 1767977189547) (:by |sync)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |str)
                                                          |V $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text "||Confirmed: ")
                                                          |X $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |text)
                                                      |b $ %{} :Expr (:at 1767977189547) (:by |sync)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |fn)
                                                          |V $ %{} :Expr (:at 1767977189547) (:by |sync)
                                                            :data $ {}
                                                          |X $ %{} :Expr (:at 1767977189547) (:by |sync)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |println)
                                                              |V $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text "||after confirmed")
                          |l $ %{} :Expr (:at 1767977189547) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |=<)
                              |V $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |8)
                              |X $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |nil)
                          |n $ %{} :Expr (:at 1767977189547) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |button)
                              |V $ %{} :Expr (:at 1767977189547) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |{})
                                  |V $ %{} :Expr (:at 1767977189547) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |:inner-text)
                                      |V $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text "|\"show prompt")
                                  |X $ %{} :Expr (:at 1767977189547) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |:class-name)
                                      |V $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |css/button)
                                  |Z $ %{} :Expr (:at 1767977189547) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |:on-click)
                                      |V $ %{} :Expr (:at 1767977189547) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |fn)
                                          |V $ %{} :Expr (:at 1767977189547) (:by |sync)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |e)
                                              |V $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |d!)
                                          |X $ %{} :Expr (:at 1767977189547) (:by |sync)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |.show)
                                              |V $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |prompt-plugin)
                                              |X $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |d!)
                                              |Z $ %{} :Expr (:at 1767977189547) (:by |sync)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |fn)
                                                  |V $ %{} :Expr (:at 1767977189547) (:by |sync)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |text)
                                                  |X $ %{} :Expr (:at 1767977189547) (:by |sync)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |println)
                                                      |V $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text "|\"read from prompt")
                                                      |X $ %{} :Expr (:at 1767977189547) (:by |sync)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |to-lispy-string)
                                                          |V $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |text)
                          |p $ %{} :Expr (:at 1767977189547) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |=<)
                              |V $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |8)
                              |X $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |nil)
                          |r $ %{} :Expr (:at 1767977189547) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |button)
                              |V $ %{} :Expr (:at 1767977189547) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |{})
                                  |V $ %{} :Expr (:at 1767977189547) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |:inner-text)
                                      |V $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text "|\"show multilines prompt")
                                  |X $ %{} :Expr (:at 1767977189547) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |:class-name)
                                      |V $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |css/button)
                                  |Z $ %{} :Expr (:at 1767977189547) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |:on-click)
                                      |V $ %{} :Expr (:at 1767977189547) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |fn)
                                          |V $ %{} :Expr (:at 1767977189547) (:by |sync)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |e)
                                              |V $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |d!)
                                          |X $ %{} :Expr (:at 1767977189547) (:by |sync)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |.show)
                                              |V $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |prompt-multilines-plugin)
                                              |X $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |d!)
                                              |Z $ %{} :Expr (:at 1767977189547) (:by |sync)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |fn)
                                                  |V $ %{} :Expr (:at 1767977189547) (:by |sync)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |text)
                                                  |X $ %{} :Expr (:at 1767977189547) (:by |sync)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |println)
                                                      |V $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text "|\"read from prompt")
                                                      |X $ %{} :Expr (:at 1767977189547) (:by |sync)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |to-lispy-string)
                                                          |V $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |text)
                          |t $ %{} :Expr (:at 1767977189547) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |=<)
                              |V $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |8)
                              |X $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |nil)
                          |v $ %{} :Expr (:at 1767977189547) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |comp-trigger)
                              |V $ %{} :Expr (:at 1767977189547) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |.show?)
                                  |V $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |prompt-validation-plugin)
                              |X $ %{} :Expr (:at 1767977189547) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |button)
                                  |V $ %{} :Expr (:at 1767977189547) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |{})
                                      |V $ %{} :Expr (:at 1767977189547) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |:inner-text)
                                          |V $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text "|\"show validated prompt")
                                      |X $ %{} :Expr (:at 1767977189547) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |:class-name)
                                          |V $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |css/button)
                                      |Z $ %{} :Expr (:at 1767977189547) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |:on-click)
                                          |V $ %{} :Expr (:at 1767977189547) (:by |sync)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |fn)
                                              |V $ %{} :Expr (:at 1767977189547) (:by |sync)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |e)
                                                  |V $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |d!)
                                              |X $ %{} :Expr (:at 1767977189547) (:by |sync)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |.show)
                                                  |V $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |prompt-validation-plugin)
                                                  |X $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |d!)
                                                  |Z $ %{} :Expr (:at 1767977189547) (:by |sync)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |fn)
                                                      |V $ %{} :Expr (:at 1767977189547) (:by |sync)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |text)
                                                      |X $ %{} :Expr (:at 1767977189547) (:by |sync)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |println)
                                                          |V $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text "|\"read from prompt")
                                                          |X $ %{} :Expr (:at 1767977189547) (:by |sync)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |to-lispy-string)
                                                              |V $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |text)
                      |b $ %{} :Expr (:at 1767977189547) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |.render)
                          |V $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |alert-plugin)
                      |d $ %{} :Expr (:at 1767977189547) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |.render)
                          |V $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |confirm-plugin)
                      |f $ %{} :Expr (:at 1767977189547) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |.render)
                          |V $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |prompt-plugin)
                      |h $ %{} :Expr (:at 1767977189547) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |.render)
                          |V $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |prompt-multilines-plugin)
                      |j $ %{} :Expr (:at 1767977189547) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |.render)
                          |V $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |prompt-validation-plugin)
                      |l $ %{} :Expr (:at 1767977189547) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |.render)
                          |V $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |alert-text-plugin)
          :examples $ []
        |style-logo $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1767546522349) (:by |sync)
            :data $ {}
              |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |defstyle)
              |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |style-logo)
              |X $ %{} :Expr (:at 1767546522349) (:by |sync)
                :data $ {}
                  |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |{})
                  |V $ %{} :Expr (:at 1767546522349) (:by |sync)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text "|\"&")
                      |V $ %{} :Expr (:at 1767546522349) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |{})
                          |V $ %{} :Expr (:at 1767546522349) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |:width)
                              |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |120)
          :examples $ []
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1767546522349) (:by |sync)
          :data $ {}
            |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |ns)
            |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |respo-alerts.comp.container)
            |X $ %{} :Expr (:at 1767546522349) (:by |sync)
              :data $ {}
                |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |:require)
                |V $ %{} :Expr (:at 1767546522349) (:by |sync)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |respo-ui.core)
                    |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |:as)
                    |X $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |ui)
                |X $ %{} :Expr (:at 1767546522349) (:by |sync)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |respo.css)
                    |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |:refer)
                    |X $ %{} :Expr (:at 1767546522349) (:by |sync)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |defstyle)
                |Z $ %{} :Expr (:at 1767546522349) (:by |sync)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |respo-ui.css)
                    |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |:as)
                    |X $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |css)
                |b $ %{} :Expr (:at 1767546522349) (:by |sync)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |respo.core)
                    |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |:refer)
                    |X $ %{} :Expr (:at 1767546522349) (:by |sync)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |defcomp)
                        |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |>>)
                        |X $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |<>)
                        |Z $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |div)
                        |b $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |button)
                        |d $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |textarea)
                        |f $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |span)
                        |h $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |img)
                        |j $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |a)
                |d $ %{} :Expr (:at 1767546522349) (:by |sync)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |respo.comp.space)
                    |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |:refer)
                    |X $ %{} :Expr (:at 1767546522349) (:by |sync)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |=<)
                |f $ %{} :Expr (:at 1767546522349) (:by |sync)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |reel.comp.reel)
                    |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |:refer)
                    |X $ %{} :Expr (:at 1767546522349) (:by |sync)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |comp-reel)
                |h $ %{} :Expr (:at 1767546522349) (:by |sync)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |respo-alerts.config)
                    |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |:refer)
                    |X $ %{} :Expr (:at 1767546522349) (:by |sync)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |dev?)
                |j $ %{} :Expr (:at 1767546522349) (:by |sync)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |respo-alerts.core)
                    |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |:refer)
                    |X $ %{} :Expr (:at 1767546522349) (:by |sync)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |comp-modal)
                        |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |comp-modal-menu)
                        |X $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |use-alert)
                        |Z $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |use-confirm)
                        |b $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |use-prompt)
                        |d $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |use-modal)
                        |f $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |use-modal-menu)
                        |h $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |use-drawer)
                |l $ %{} :Expr (:at 1767546522349) (:by |sync)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |respo.comp.inspect)
                    |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |:refer)
                    |X $ %{} :Expr (:at 1767546522349) (:by |sync)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |comp-inspect)
                |n $ %{} :Expr (:at 1767546522349) (:by |sync)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |respo-alerts.style)
                    |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |:as)
                    |X $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |style)
                |p $ %{} :Expr (:at 1767546522349) (:by |sync)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text "|\"@calcit/std")
                    |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |:refer)
                    |X $ %{} :Expr (:at 1767546522349) (:by |sync)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |rand-int)
                |r $ %{} :Expr (:at 1767546522349) (:by |sync)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |respo-alerts.trigger)
                    |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |:refer)
                    |X $ %{} :Expr (:at 1767546522349) (:by |sync)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |comp-trigger)
                |t $ %{} :Expr (:at 1767546522349) (:by |sync)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |respo-alerts.trigger)
                    |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |:refer)
                    |X $ %{} :Expr (:at 1767546522349) (:by |sync)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |comp-trigger)
        :examples $ []
    |respo-alerts.config $ %{} :FileEntry
      :defs $ {}
        |dev? $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1767546522350) (:by |sync)
            :data $ {}
              |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |def)
              |V $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |dev?)
              |X $ %{} :Expr (:at 1767546522350) (:by |sync)
                :data $ {}
                  |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |=)
                  |V $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text "|\"dev")
                  |X $ %{} :Expr (:at 1767546522350) (:by |sync)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |get-env)
                      |V $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text "|\"mode")
                      |X $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text "|\"release")
          :examples $ []
        |site $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1767546522350) (:by |sync)
            :data $ {}
              |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |def)
              |V $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |site)
              |X $ %{} :Expr (:at 1767546522350) (:by |sync)
                :data $ {}
                  |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |{})
                  |V $ %{} :Expr (:at 1767546522350) (:by |sync)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |:dev-ui)
                      |V $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text "|\"http://localhost:8100/main-fonts.css")
                  |X $ %{} :Expr (:at 1767546522350) (:by |sync)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |:release-ui)
                      |V $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text "|\"http://cdn.tiye.me/favored-fonts/main-fonts.css")
                  |Z $ %{} :Expr (:at 1767546522350) (:by |sync)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |:cdn-url)
                      |V $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text "|\"http://cdn.tiye.me/calcit-workflow/")
                  |b $ %{} :Expr (:at 1767546522350) (:by |sync)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |:title)
                      |V $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text "|\"Alerts")
                  |d $ %{} :Expr (:at 1767546522350) (:by |sync)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |:icon)
                      |V $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text "|\"http://cdn.tiye.me/logo/respo.png")
                  |f $ %{} :Expr (:at 1767546522350) (:by |sync)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |:storage-key)
                      |V $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text "|\"respo-alerts")
          :examples $ []
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1767546522350) (:by |sync)
          :data $ {}
            |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |ns)
            |V $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |respo-alerts.config)
        :examples $ []
    |respo-alerts.core $ %{} :FileEntry
      :defs $ {}
        |%alert-actions $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1767546522350) (:by |sync)
            :data $ {}
              |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |defrecord!)
              |V $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |%alert-actions)
              |X $ %{} :Expr (:at 1767546522350) (:by |sync)
                :data $ {}
                  |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |:render)
                  |V $ %{} :Expr (:at 1767546522350) (:by |sync)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |fn)
                      |V $ %{} :Expr (:at 1767546522350) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |self)
                      |X $ %{} :Expr (:at 1767546522350) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |tag-match)
                          |V $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |self)
                          |X $ %{} :Expr (:at 1767546522350) (:by |sync)
                            :data $ {}
                              |T $ %{} :Expr (:at 1767546522350) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |:plugin)
                                  |V $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |node)
                                  |X $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |cursor)
                                  |Z $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |state)
                              |V $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |node)
              |Z $ %{} :Expr (:at 1767546522350) (:by |sync)
                :data $ {}
                  |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |:show)
                  |V $ %{} :Expr (:at 1767546522350) (:by |sync)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |fn)
                      |V $ %{} :Expr (:at 1767546522350) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |self)
                          |V $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |d!)
                          |X $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |?)
                          |Z $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |text)
                      |X $ %{} :Expr (:at 1767546522350) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |tag-match)
                          |V $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |self)
                          |X $ %{} :Expr (:at 1767546522350) (:by |sync)
                            :data $ {}
                              |T $ %{} :Expr (:at 1767546522350) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |:plugin)
                                  |V $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |node)
                                  |X $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |cursor)
                                  |Z $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |state)
                              |V $ %{} :Expr (:at 1767546522350) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |if)
                                  |V $ %{} :Expr (:at 1767546522350) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |some?)
                                      |V $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |text)
                                  |X $ %{} :Expr (:at 1767546522350) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |d!)
                                      |V $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |cursor)
                                      |X $ %{} :Expr (:at 1767546522350) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |assoc)
                                          |V $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |state)
                                          |X $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |:show?)
                                          |Z $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |true)
                                          |b $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |:text)
                                          |d $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |text)
                                  |Z $ %{} :Expr (:at 1767546522350) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |d!)
                                      |V $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |cursor)
                                      |X $ %{} :Expr (:at 1767546522350) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |assoc)
                                          |V $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |state)
                                          |X $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |:show?)
                                          |Z $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |true)
              |b $ %{} :Expr (:at 1767546522350) (:by |sync)
                :data $ {}
                  |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |:close)
                  |V $ %{} :Expr (:at 1767546522350) (:by |sync)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |fn)
                      |V $ %{} :Expr (:at 1767546522350) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |self)
                          |V $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |d!)
                      |X $ %{} :Expr (:at 1767546522350) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |tag-match)
                          |V $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |self)
                          |X $ %{} :Expr (:at 1767546522350) (:by |sync)
                            :data $ {}
                              |T $ %{} :Expr (:at 1767546522350) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |:plugin)
                                  |V $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |node)
                                  |X $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |cursor)
                                  |Z $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |state)
                              |V $ %{} :Expr (:at 1767546522350) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |d!)
                                  |V $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |cursor)
                                  |X $ %{} :Expr (:at 1767546522350) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |assoc)
                                      |V $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |state)
                                      |X $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |:show?)
                                      |Z $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |false)
              |d $ %{} :Expr (:at 1767546522350) (:by |sync)
                :data $ {}
                  |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |:show?)
                  |V $ %{} :Expr (:at 1767546522350) (:by |sync)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |fn)
                      |V $ %{} :Expr (:at 1767546522350) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |self)
                      |X $ %{} :Expr (:at 1767546522350) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |tag-match)
                          |V $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |self)
                          |X $ %{} :Expr (:at 1767546522350) (:by |sync)
                            :data $ {}
                              |T $ %{} :Expr (:at 1767546522350) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |:plugin)
                                  |V $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |node)
                                  |X $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |cursor)
                                  |Z $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |state)
                              |V $ %{} :Expr (:at 1767546522350) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |:show?)
                                  |V $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |state)
          :examples $ []
        |%confirm-actions $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1767977189547) (:by |sync)
            :data $ {}
              |T $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |defrecord!)
              |V $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |%confirm-actions)
              |X $ %{} :Expr (:at 1767977189547) (:by |sync)
                :data $ {}
                  |T $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |:render)
                  |V $ %{} :Expr (:at 1767977189547) (:by |sync)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |fn)
                      |V $ %{} :Expr (:at 1767977189547) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |self)
                      |X $ %{} :Expr (:at 1767977189547) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |tag-match)
                          |V $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |self)
                          |X $ %{} :Expr (:at 1767977189547) (:by |sync)
                            :data $ {}
                              |T $ %{} :Expr (:at 1767977189547) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |:plugin)
                                  |V $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |node)
                                  |X $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |cursor)
                                  |Z $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |state)
                                  |b $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |*next)
                              |V $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |node)
              |Z $ %{} :Expr (:at 1767977189547) (:by |sync)
                :data $ {}
                  |T $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |:show)
                  |V $ %{} :Expr (:at 1767977189547) (:by |sync)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |fn)
                      |V $ %{} :Expr (:at 1767977189547) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |self)
                          |V $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |d!)
                          |X $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |next-task)
                      |X $ %{} :Expr (:at 1767977189547) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |tag-match)
                          |V $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |self)
                          |X $ %{} :Expr (:at 1767977189547) (:by |sync)
                            :data $ {}
                              |T $ %{} :Expr (:at 1767977189547) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |:plugin)
                                  |V $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |node)
                                  |X $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |cursor)
                                  |Z $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |state)
                                  |b $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |*next-confirm-task)
                              |V $ %{} :Expr (:at 1767977189547) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |do)
                                  |V $ %{} :Expr (:at 1767977189547) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |.set!)
                                      |V $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |*next-confirm-task)
                                      |X $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |next-task)
                                  |X $ %{} :Expr (:at 1767977189547) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |d!)
                                      |V $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |cursor)
                                      |X $ %{} :Expr (:at 1767977189547) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |assoc)
                                          |V $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |state)
                                          |X $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |:show?)
                                          |Z $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |true)
                                          |b $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |:text)
                                          |d $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |nil)
              |b $ %{} :Expr (:at 1767977189547) (:by |sync)
                :data $ {}
                  |T $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |:show-with-text)
                  |V $ %{} :Expr (:at 1767977189547) (:by |sync)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |fn)
                      |V $ %{} :Expr (:at 1767977189547) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |self)
                          |V $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |d!)
                          |X $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |text)
                          |Z $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |next-task)
                      |X $ %{} :Expr (:at 1767977189547) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |tag-match)
                          |V $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |self)
                          |X $ %{} :Expr (:at 1767977189547) (:by |sync)
                            :data $ {}
                              |T $ %{} :Expr (:at 1767977189547) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |:plugin)
                                  |V $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |node)
                                  |X $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |cursor)
                                  |Z $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |state)
                                  |b $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |*next-confirm-task)
                              |V $ %{} :Expr (:at 1767977189547) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |do)
                                  |V $ %{} :Expr (:at 1767977189547) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |.set!)
                                      |V $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |*next-confirm-task)
                                      |X $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |next-task)
                                  |X $ %{} :Expr (:at 1767977189547) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |d!)
                                      |V $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |cursor)
                                      |X $ %{} :Expr (:at 1767977189547) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |assoc)
                                          |V $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |state)
                                          |X $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |:show?)
                                          |Z $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |true)
                                          |b $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |:text)
                                          |d $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |text)
              |d $ %{} :Expr (:at 1767977189547) (:by |sync)
                :data $ {}
                  |T $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |:close)
                  |V $ %{} :Expr (:at 1767977189547) (:by |sync)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |fn)
                      |V $ %{} :Expr (:at 1767977189547) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |self)
                          |V $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |d!)
                      |X $ %{} :Expr (:at 1767977189547) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |tag-match)
                          |V $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |self)
                          |X $ %{} :Expr (:at 1767977189547) (:by |sync)
                            :data $ {}
                              |T $ %{} :Expr (:at 1767977189547) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |:plugin)
                                  |V $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |node)
                                  |X $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |cursor)
                                  |Z $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |state)
                                  |b $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |*next)
                              |V $ %{} :Expr (:at 1767977189547) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |d!)
                                  |V $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |cursor)
                                  |X $ %{} :Expr (:at 1767977189547) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |assoc)
                                      |V $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |state)
                                      |X $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |:show?)
                                      |Z $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |false)
              |f $ %{} :Expr (:at 1767977189547) (:by |sync)
                :data $ {}
                  |T $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |:show?)
                  |V $ %{} :Expr (:at 1767977189547) (:by |sync)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |fn)
                      |V $ %{} :Expr (:at 1767977189547) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |self)
                      |X $ %{} :Expr (:at 1767977189547) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |tag-match)
                          |V $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |self)
                          |X $ %{} :Expr (:at 1767977189547) (:by |sync)
                            :data $ {}
                              |T $ %{} :Expr (:at 1767977189547) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |:plugin)
                                  |V $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |node)
                                  |X $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |cursor)
                                  |Z $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |state)
                              |V $ %{} :Expr (:at 1767977189547) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |:show?)
                                  |V $ %{} :Leaf (:at 1767977189547) (:by |sync) (:text |state)
          :examples $ []
        |%drawer-actions $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1767546522350) (:by |sync)
            :data $ {}
              |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |defrecord!)
              |V $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |%drawer-actions)
              |X $ %{} :Expr (:at 1767546522350) (:by |sync)
                :data $ {}
                  |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |:render)
                  |V $ %{} :Expr (:at 1767546522350) (:by |sync)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |fn)
                      |V $ %{} :Expr (:at 1767546522350) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |self)
                      |X $ %{} :Expr (:at 1767546522350) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |tag-match)
                          |V $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |self)
                          |X $ %{} :Expr (:at 1767546522350) (:by |sync)
                            :data $ {}
                              |T $ %{} :Expr (:at 1767546522350) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |:plugin)
                                  |V $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |node)
                                  |X $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |cursor)
                                  |Z $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |state)
                              |V $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |node)
              |Z $ %{} :Expr (:at 1767546522350) (:by |sync)
                :data $ {}
                  |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |:show)
                  |V $ %{} :Expr (:at 1767546522350) (:by |sync)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |fn)
                      |V $ %{} :Expr (:at 1767546522350) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |self)
                          |V $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |d!)
                      |X $ %{} :Expr (:at 1767546522350) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |tag-match)
                          |V $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |self)
                          |X $ %{} :Expr (:at 1767546522350) (:by |sync)
                            :data $ {}
                              |T $ %{} :Expr (:at 1767546522350) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |:plugin)
                                  |V $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |node)
                                  |X $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |cursor)
                                  |Z $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |state)
                              |V $ %{} :Expr (:at 1767546522350) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |d!)
                                  |V $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |cursor)
                                  |X $ %{} :Expr (:at 1767546522350) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |assoc)
                                      |V $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |state)
                                      |X $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |:show?)
                                      |Z $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |true)
              |b $ %{} :Expr (:at 1767546522350) (:by |sync)
                :data $ {}
                  |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |:close)
                  |V $ %{} :Expr (:at 1767546522350) (:by |sync)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |fn)
                      |V $ %{} :Expr (:at 1767546522350) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |self)
                          |V $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |d!)
                      |X $ %{} :Expr (:at 1767546522350) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |tag-match)
                          |V $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |self)
                          |X $ %{} :Expr (:at 1767546522350) (:by |sync)
                            :data $ {}
                              |T $ %{} :Expr (:at 1767546522350) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |:plugin)
                                  |V $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |node)
                                  |X $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |cursor)
                                  |Z $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |state)
                              |V $ %{} :Expr (:at 1767546522350) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |d!)
                                  |V $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |cursor)
                                  |X $ %{} :Expr (:at 1767546522350) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |assoc)
                                      |V $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |state)
                                      |X $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |:show?)
                                      |Z $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |false)
              |d $ %{} :Expr (:at 1767546522350) (:by |sync)
                :data $ {}
                  |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |:show?)
                  |V $ %{} :Expr (:at 1767546522350) (:by |sync)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |fn)
                      |V $ %{} :Expr (:at 1767546522350) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |self)
                      |X $ %{} :Expr (:at 1767546522350) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |tag-match)
                          |V $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |self)
                          |X $ %{} :Expr (:at 1767546522350) (:by |sync)
                            :data $ {}
                              |T $ %{} :Expr (:at 1767546522350) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |:plugin)
                                  |V $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |node)
                                  |X $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |cursor)
                                  |Z $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |state)
                              |V $ %{} :Expr (:at 1767546522350) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |:show?)
                                  |V $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |state)
          :examples $ []
        |%modal-actions $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1767546522349) (:by |sync)
            :data $ {}
              |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |defrecord!)
              |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |%modal-actions)
              |X $ %{} :Expr (:at 1767546522349) (:by |sync)
                :data $ {}
                  |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |:render)
                  |V $ %{} :Expr (:at 1767546522349) (:by |sync)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |fn)
                      |V $ %{} :Expr (:at 1767546522349) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |self)
                      |X $ %{} :Expr (:at 1767546522349) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |tag-match)
                          |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |self)
                          |X $ %{} :Expr (:at 1767546522349) (:by |sync)
                            :data $ {}
                              |T $ %{} :Expr (:at 1767546522349) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |:plugin)
                                  |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |node)
                                  |X $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |cursor)
                                  |Z $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |state)
                              |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |node)
              |Z $ %{} :Expr (:at 1767546522349) (:by |sync)
                :data $ {}
                  |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |:show)
                  |V $ %{} :Expr (:at 1767546522349) (:by |sync)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |fn)
                      |V $ %{} :Expr (:at 1767546522349) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |self)
                          |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |d!)
                      |X $ %{} :Expr (:at 1767546522349) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |tag-match)
                          |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |self)
                          |X $ %{} :Expr (:at 1767546522349) (:by |sync)
                            :data $ {}
                              |T $ %{} :Expr (:at 1767546522349) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |:plugin)
                                  |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |node)
                                  |X $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |cursor)
                                  |Z $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |state)
                              |V $ %{} :Expr (:at 1767546522349) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |d!)
                                  |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |cursor)
                                  |X $ %{} :Expr (:at 1767546522349) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |assoc)
                                      |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |state)
                                      |X $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |:show?)
                                      |Z $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |true)
              |b $ %{} :Expr (:at 1767546522349) (:by |sync)
                :data $ {}
                  |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |:close)
                  |V $ %{} :Expr (:at 1767546522349) (:by |sync)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |fn)
                      |V $ %{} :Expr (:at 1767546522349) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |self)
                          |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |d!)
                      |X $ %{} :Expr (:at 1767546522349) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |tag-match)
                          |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |self)
                          |X $ %{} :Expr (:at 1767546522349) (:by |sync)
                            :data $ {}
                              |T $ %{} :Expr (:at 1767546522349) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |:plugin)
                                  |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |node)
                                  |X $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |cursor)
                                  |Z $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |state)
                              |V $ %{} :Expr (:at 1767546522349) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |d!)
                                  |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |cursor)
                                  |X $ %{} :Expr (:at 1767546522349) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |assoc)
                                      |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |state)
                                      |X $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |:show?)
                                      |Z $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |false)
              |d $ %{} :Expr (:at 1767546522349) (:by |sync)
                :data $ {}
                  |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |:show?)
                  |V $ %{} :Expr (:at 1767546522349) (:by |sync)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |fn)
                      |V $ %{} :Expr (:at 1767546522349) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |self)
                      |X $ %{} :Expr (:at 1767546522349) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |tag-match)
                          |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |self)
                          |X $ %{} :Expr (:at 1767546522349) (:by |sync)
                            :data $ {}
                              |T $ %{} :Expr (:at 1767546522349) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |:plugin)
                                  |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |node)
                                  |X $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |cursor)
                                  |Z $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |state)
                              |V $ %{} :Expr (:at 1767546522349) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |:show?)
                                  |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |state)
          :examples $ []
        |%modal-menu-actions $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1767546522350) (:by |sync)
            :data $ {}
              |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |defrecord!)
              |V $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |%modal-menu-actions)
              |X $ %{} :Expr (:at 1767546522350) (:by |sync)
                :data $ {}
                  |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |:render)
                  |V $ %{} :Expr (:at 1767546522350) (:by |sync)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |fn)
                      |V $ %{} :Expr (:at 1767546522350) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |self)
                      |X $ %{} :Expr (:at 1767546522350) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |tag-match)
                          |V $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |self)
                          |X $ %{} :Expr (:at 1767546522350) (:by |sync)
                            :data $ {}
                              |T $ %{} :Expr (:at 1767546522350) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |:plugin)
                                  |V $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |node)
                                  |X $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |cursor)
                                  |Z $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |state)
                              |V $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |node)
              |Z $ %{} :Expr (:at 1767546522350) (:by |sync)
                :data $ {}
                  |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |:show)
                  |V $ %{} :Expr (:at 1767546522350) (:by |sync)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |fn)
                      |V $ %{} :Expr (:at 1767546522350) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |self)
                          |V $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |d!)
                      |X $ %{} :Expr (:at 1767546522350) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |tag-match)
                          |V $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |self)
                          |X $ %{} :Expr (:at 1767546522350) (:by |sync)
                            :data $ {}
                              |T $ %{} :Expr (:at 1767546522350) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |:plugin)
                                  |V $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |node)
                                  |X $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |cursor)
                                  |Z $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |state)
                              |V $ %{} :Expr (:at 1767546522350) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |d!)
                                  |V $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |cursor)
                                  |X $ %{} :Expr (:at 1767546522350) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |assoc)
                                      |V $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |state)
                                      |X $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |:show?)
                                      |Z $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |true)
              |b $ %{} :Expr (:at 1767546522350) (:by |sync)
                :data $ {}
                  |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |:close)
                  |V $ %{} :Expr (:at 1767546522350) (:by |sync)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |fn)
                      |V $ %{} :Expr (:at 1767546522350) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |self)
                          |V $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |d!)
                      |X $ %{} :Expr (:at 1767546522350) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |tag-match)
                          |V $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |self)
                          |X $ %{} :Expr (:at 1767546522350) (:by |sync)
                            :data $ {}
                              |T $ %{} :Expr (:at 1767546522350) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |:plugin)
                                  |V $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |node)
                                  |X $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |cursor)
                                  |Z $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |state)
                              |V $ %{} :Expr (:at 1767546522350) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |d!)
                                  |V $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |cursor)
                                  |X $ %{} :Expr (:at 1767546522350) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |assoc)
                                      |V $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |state)
                                      |X $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |:show?)
                                      |Z $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |false)
              |d $ %{} :Expr (:at 1767546522350) (:by |sync)
                :data $ {}
                  |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |:show?)
                  |V $ %{} :Expr (:at 1767546522350) (:by |sync)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |fn)
                      |V $ %{} :Expr (:at 1767546522350) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |self)
                      |X $ %{} :Expr (:at 1767546522350) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |tag-match)
                          |V $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |self)
                          |X $ %{} :Expr (:at 1767546522350) (:by |sync)
                            :data $ {}
                              |T $ %{} :Expr (:at 1767546522350) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |:plugin)
                                  |V $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |node)
                                  |X $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |cursor)
                                  |Z $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |state)
                              |V $ %{} :Expr (:at 1767546522350) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |:show?)
                                  |V $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |state)
          :examples $ []
        |%prompt-actions $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1767546522350) (:by |sync)
            :data $ {}
              |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |defrecord!)
              |V $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |%prompt-actions)
              |X $ %{} :Expr (:at 1767546522350) (:by |sync)
                :data $ {}
                  |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |:render)
                  |V $ %{} :Expr (:at 1767546522350) (:by |sync)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |fn)
                      |V $ %{} :Expr (:at 1767546522350) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |self)
                      |X $ %{} :Expr (:at 1767546522350) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |tag-match)
                          |V $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |self)
                          |X $ %{} :Expr (:at 1767546522350) (:by |sync)
                            :data $ {}
                              |T $ %{} :Expr (:at 1767546522350) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |:plugin)
                                  |V $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |node)
                                  |X $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |cursor)
                                  |Z $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |state)
                                  |b $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |*next)
                              |V $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |node)
              |Z $ %{} :Expr (:at 1767546522350) (:by |sync)
                :data $ {}
                  |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |:show)
                  |V $ %{} :Expr (:at 1767546522350) (:by |sync)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |fn)
                      |V $ %{} :Expr (:at 1767546522350) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |self)
                          |V $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |d!)
                          |X $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |next-task)
                      |X $ %{} :Expr (:at 1767546522350) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |tag-match)
                          |V $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |self)
                          |X $ %{} :Expr (:at 1767546522350) (:by |sync)
                            :data $ {}
                              |T $ %{} :Expr (:at 1767546522350) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |:plugin)
                                  |V $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |node)
                                  |X $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |cursor)
                                  |Z $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |state)
                                  |b $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |*next-prompt-task)
                              |V $ %{} :Expr (:at 1767546522350) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |do)
                                  |V $ %{} :Expr (:at 1767546522350) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |.set!)
                                      |V $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |*next-prompt-task)
                                      |X $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |next-task)
                                  |X $ %{} :Expr (:at 1767546522350) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |d!)
                                      |V $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |cursor)
                                      |X $ %{} :Expr (:at 1767546522350) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |assoc)
                                          |V $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |state)
                                          |X $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |:show?)
                                          |Z $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |true)
              |b $ %{} :Expr (:at 1767546522350) (:by |sync)
                :data $ {}
                  |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |:close)
                  |V $ %{} :Expr (:at 1767546522350) (:by |sync)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |fn)
                      |V $ %{} :Expr (:at 1767546522350) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |self)
                          |V $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |d!)
                      |X $ %{} :Expr (:at 1767546522350) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |tag-match)
                          |V $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |self)
                          |X $ %{} :Expr (:at 1767546522350) (:by |sync)
                            :data $ {}
                              |T $ %{} :Expr (:at 1767546522350) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |:plugin)
                                  |V $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |node)
                                  |X $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |cursor)
                                  |Z $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |state)
                                  |b $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |*next)
                              |V $ %{} :Expr (:at 1767546522350) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |d!)
                                  |V $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |cursor)
                                  |X $ %{} :Expr (:at 1767546522350) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |assoc)
                                      |V $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |state)
                                      |X $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |:show?)
                                      |Z $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |false)
              |d $ %{} :Expr (:at 1767546522350) (:by |sync)
                :data $ {}
                  |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |:show?)
                  |V $ %{} :Expr (:at 1767546522350) (:by |sync)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |fn)
                      |V $ %{} :Expr (:at 1767546522350) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |self)
                      |X $ %{} :Expr (:at 1767546522350) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |tag-match)
                          |V $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |self)
                          |X $ %{} :Expr (:at 1767546522350) (:by |sync)
                            :data $ {}
                              |T $ %{} :Expr (:at 1767546522350) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |:plugin)
                                  |V $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |node)
                                  |X $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |cursor)
                                  |Z $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |state)
                                  |b $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |*next)
                              |V $ %{} :Expr (:at 1767546522350) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |:show?)
                                  |V $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |state)
          :examples $ []
        |comp-alert-modal $ %{} :CodeEntry (:doc "||Alert modal component. Shows a simple message dialog with a confirm button. Used internally by use-alert hook.")
          :code $ %{} :Expr (:at 1767977273133) (:by |sync)
            :data $ {}
              |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |defcomp)
              |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |comp-alert-modal)
              |X $ %{} :Expr (:at 1767977273133) (:by |sync)
                :data $ {}
                  |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |options)
                  |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |show?)
                  |X $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |on-read!)
                  |Z $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |on-close!)
              |Z $ %{} :Expr (:at 1767977273133) (:by |sync)
                :data $ {}
                  |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |[])
                  |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |effect-focus)
                      |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |str)
                          |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text "|\".")
                          |X $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |schema/confirm-button-name)
                      |X $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |show?)
                  |X $ %{} :Expr (:at 1767977273133) (:by |sync)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |effect-fade)
                      |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |show?)
                  |Z $ %{} :Expr (:at 1767977273133) (:by |sync)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |div)
                      |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |{})
                          |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:style)
                              |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |{})
                                  |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:position)
                                      |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:absolute)
                      |X $ %{} :Expr (:at 1767977273133) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |if)
                          |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |show?)
                          |X $ %{} :Expr (:at 1767977273133) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |div)
                              |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |{})
                                  |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:class-name)
                                      |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |str-spaced)
                                          |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |css/fullscreen)
                                          |X $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |css/center)
                                          |Z $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |style-modal-backdrop)
                                          |b $ %{} :Expr (:at 1767977273133) (:by |sync)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |get)
                                              |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |options)
                                              |X $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:backdrop-class)
                                  |X $ %{} :Expr (:at 1767977273133) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:style)
                                      |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |get)
                                          |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |options)
                                          |X $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:backdrop-style)
                                  |Z $ %{} :Expr (:at 1767977273133) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:on-click)
                                      |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |fn)
                                          |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |e)
                                              |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |d!)
                                          |X $ %{} :Expr (:at 1767977273133) (:by |sync)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |let)
                                              |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                :data $ {}
                                                  |T $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |event)
                                                      |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:event)
                                                          |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |e)
                                              |X $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |.!stopPropagation)
                                                  |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |event)
                                              |Z $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |on-read!)
                                                  |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |e)
                                                  |X $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |d!)
                                              |b $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |on-close!)
                                                  |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |d!)
                              |X $ %{} :Expr (:at 1767977273133) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |div)
                                  |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |{})
                                      |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:class-name)
                                          |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |str-spaced)
                                              |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |style-modal-card)
                                              |X $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |css/global)
                                              |Z $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |css/column)
                                              |b $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |get)
                                                  |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |options)
                                                  |X $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:card-class)
                                      |X $ %{} :Expr (:at 1767977273133) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:style)
                                          |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |get)
                                              |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |options)
                                              |X $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:card-style)
                                      |Z $ %{} :Expr (:at 1767977273133) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:on-click)
                                          |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |fn)
                                              |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |e)
                                                  |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |d!)
                                              |X $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |nil)
                                  |X $ %{} :Expr (:at 1767977273133) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |div)
                                      |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |{})
                                      |X $ %{} :Expr (:at 1767977273133) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |<>)
                                          |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |either)
                                              |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |get)
                                                  |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |options)
                                                  |X $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:text)
                                              |X $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text "|\"Alert!")
                                  |Z $ %{} :Expr (:at 1767977273133) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |=<)
                                      |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |nil)
                                      |X $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |8)
                                  |b $ %{} :Expr (:at 1767977273133) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |div)
                                      |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |{})
                                          |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:class-name)
                                              |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |css/row-parted)
                                      |X $ %{} :Expr (:at 1767977273133) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |span)
                                          |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |{})
                                      |Z $ %{} :Expr (:at 1767977273133) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |button)
                                          |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |{})
                                              |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:class-name)
                                                  |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |str-spaced)
                                                      |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |css/button)
                                                      |X $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |schema/confirm-button-name)
                                                      |Z $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |get)
                                                          |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |options)
                                                          |X $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:confirm-class)
                                              |X $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:style)
                                                  |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |get)
                                                      |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |options)
                                                      |X $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:confirm-style)
                                              |Z $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:on-click)
                                                  |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |fn)
                                                      |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |e)
                                                          |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |d!)
                                                      |X $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |on-read!)
                                                          |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |e)
                                                          |X $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |d!)
                                                      |Z $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |on-close!)
                                                          |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |d!)
                                          |X $ %{} :Expr (:at 1767977273133) (:by |sync)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |<>)
                                              |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |either)
                                                  |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |get)
                                                      |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |options)
                                                      |X $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:confirm-text)
                                                  |X $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text "|\"Read")
                              |Z $ %{} :Expr (:at 1767977273133) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |comp-esc-listener)
                                  |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |show?)
                                  |X $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |on-close!)
          :examples $ []
            quote $ comp-alert-modal
              {} $ :text "|Hello World"
              , show? on-read! on-close!
        |comp-confirm-modal $ %{} :CodeEntry (:doc "||Confirm modal component. Shows a dialog with confirm and cancel buttons. Used internally by use-confirm hook.")
          :code $ %{} :Expr (:at 1767977273133) (:by |sync)
            :data $ {}
              |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |defcomp)
              |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |comp-confirm-modal)
              |X $ %{} :Expr (:at 1767977273133) (:by |sync)
                :data $ {}
                  |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |options)
                  |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |show?)
                  |X $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |on-confirm!)
                  |Z $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |on-close!)
              |Z $ %{} :Expr (:at 1767977273133) (:by |sync)
                :data $ {}
                  |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |[])
                  |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |effect-focus)
                      |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |str)
                          |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text "|\".")
                          |X $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |schema/confirm-button-name)
                      |X $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |show?)
                  |X $ %{} :Expr (:at 1767977273133) (:by |sync)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |effect-fade)
                      |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |show?)
                  |Z $ %{} :Expr (:at 1767977273133) (:by |sync)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |div)
                      |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |{})
                          |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:style)
                              |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |{})
                                  |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:position)
                                      |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:absolute)
                      |X $ %{} :Expr (:at 1767977273133) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |if)
                          |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |show?)
                          |X $ %{} :Expr (:at 1767977273133) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |div)
                              |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |{})
                                  |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:class-name)
                                      |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |str-spaced)
                                          |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |css/fullscreen)
                                          |X $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |css/center)
                                          |Z $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |style-modal-backdrop)
                                          |b $ %{} :Expr (:at 1767977273133) (:by |sync)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |get)
                                              |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |options)
                                              |X $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:backdrop-class)
                                  |X $ %{} :Expr (:at 1767977273133) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:style)
                                      |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:backdrop-style)
                                          |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |options)
                                  |Z $ %{} :Expr (:at 1767977273133) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:on-click)
                                      |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |fn)
                                          |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |e)
                                              |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |d!)
                                          |X $ %{} :Expr (:at 1767977273133) (:by |sync)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |on-close!)
                                              |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |d!)
                              |X $ %{} :Expr (:at 1767977273133) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |div)
                                  |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |{})
                                      |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:class-name)
                                          |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |str-spaced)
                                              |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |css/global)
                                              |X $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |css/column)
                                              |Z $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |style-modal-card)
                                              |b $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |get)
                                                  |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |options)
                                                  |X $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:card-class)
                                      |X $ %{} :Expr (:at 1767977273133) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:style)
                                          |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:card-style)
                                              |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |options)
                                      |Z $ %{} :Expr (:at 1767977273133) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:on-click)
                                          |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |fn)
                                              |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |e)
                                                  |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |d!)
                                              |X $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |nil)
                                  |X $ %{} :Expr (:at 1767977273133) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |div)
                                      |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |{})
                                      |X $ %{} :Expr (:at 1767977273133) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |<>)
                                          |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |either)
                                              |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:text)
                                                  |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |options)
                                              |X $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text "|\"Confirm?")
                                  |Z $ %{} :Expr (:at 1767977273133) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |=<)
                                      |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |nil)
                                      |X $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |8)
                                  |b $ %{} :Expr (:at 1767977273133) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |div)
                                      |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |{})
                                          |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:class-name)
                                              |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |css/row-parted)
                                      |X $ %{} :Expr (:at 1767977273133) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |span)
                                          |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |{})
                                      |Z $ %{} :Expr (:at 1767977273133) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |button)
                                          |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |{})
                                              |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:class-name)
                                                  |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |str-spaced)
                                                      |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |css/button)
                                                      |X $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |schema/confirm-button-name)
                                                      |Z $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |get)
                                                          |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |options)
                                                          |X $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:confirm-class)
                                              |X $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:on-click)
                                                  |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |fn)
                                                      |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |e)
                                                          |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |d!)
                                                      |X $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |on-confirm!)
                                                          |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |e)
                                                          |X $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |d!)
                                                      |Z $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |on-close!)
                                                          |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |d!)
                                          |X $ %{} :Expr (:at 1767977273133) (:by |sync)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |<>)
                                              |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |either)
                                                  |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:button-text)
                                                      |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |options)
                                                  |X $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text "|\"Confirm")
                              |Z $ %{} :Expr (:at 1767977273133) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |comp-esc-listener)
                                  |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |show?)
                                  |X $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |on-close!)
          :examples $ []
            quote $ comp-confirm-modal
              {} $ :text "|Are you sure?"
              , show? on-confirm! on-close!
        |comp-drawer $ %{} :CodeEntry (:doc "||Drawer component. Renders a sliding panel from the side with custom content via :render function in options.")
          :code $ %{} :Expr (:at 1767977273133) (:by |sync)
            :data $ {}
              |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |defcomp)
              |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |comp-drawer)
              |X $ %{} :Expr (:at 1767977273133) (:by |sync)
                :data $ {}
                  |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |options)
                  |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |show?)
                  |X $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |on-close)
              |Z $ %{} :Expr (:at 1767977273133) (:by |sync)
                :data $ {}
                  |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |[])
                  |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |effect-slide)
                      |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |show?)
                  |X $ %{} :Expr (:at 1767977273133) (:by |sync)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |div)
                      |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |{})
                          |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:style)
                              |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |merge)
                                  |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |{})
                                      |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:position)
                                          |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:absolute)
                                  |X $ %{} :Expr (:at 1767977273133) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:container-style)
                                      |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |options)
                      |X $ %{} :Expr (:at 1767977273133) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |if)
                          |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |show?)
                          |X $ %{} :Expr (:at 1767977273133) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |div)
                              |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |{})
                                  |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:class-name)
                                      |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |str-spaced)
                                          |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |css/fullscreen)
                                          |X $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |style-drawer-backdrop)
                                          |Z $ %{} :Expr (:at 1767977273133) (:by |sync)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |get)
                                              |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |options)
                                              |X $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:backdrop-class)
                                  |X $ %{} :Expr (:at 1767977273133) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:style)
                                      |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:backdrop-style)
                                          |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |options)
                                  |Z $ %{} :Expr (:at 1767977273133) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:on-click)
                                      |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |fn)
                                          |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |e)
                                              |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |d!)
                                          |X $ %{} :Expr (:at 1767977273133) (:by |sync)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |let)
                                              |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                :data $ {}
                                                  |T $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |event)
                                                      |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:event)
                                                          |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |e)
                                              |X $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |.!stopPropagation)
                                                  |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |event)
                                              |Z $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |on-close)
                                                  |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |d!)
                              |X $ %{} :Expr (:at 1767977273133) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |div)
                                  |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |{})
                                      |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:class-name)
                                          |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |str-spaced)
                                              |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |css/global)
                                              |X $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |css/column)
                                              |Z $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |style-drawer-card)
                                              |b $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |get)
                                                  |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |options)
                                                  |X $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:card-class)
                                      |X $ %{} :Expr (:at 1767977273133) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:style)
                                          |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |merge)
                                              |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |{})
                                                  |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:padding)
                                                      |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |0)
                                              |X $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:style)
                                                  |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |options)
                                      |Z $ %{} :Expr (:at 1767977273133) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:on-click)
                                          |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |fn)
                                              |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |e)
                                                  |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |d!)
                                              |X $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |nil)
                                  |X $ %{} :Expr (:at 1767977273133) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |let)
                                      |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Expr (:at 1767977273133) (:by |sync)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |title)
                                              |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:title)
                                                  |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |options)
                                      |X $ %{} :Expr (:at 1767977273133) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |if)
                                          |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |some?)
                                              |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |title)
                                          |X $ %{} :Expr (:at 1767977273133) (:by |sync)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |div)
                                              |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |{})
                                                  |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:class-name)
                                                      |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |str-spaced)
                                                          |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |css/center)
                                                          |X $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |css/font-fancy!)
                                                          |Z $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |style-modal-title)
                                              |X $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |<>)
                                                  |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |title)
                                  |Z $ %{} :Expr (:at 1767977273133) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |cond)
                                      |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Expr (:at 1767977273133) (:by |sync)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |some?)
                                              |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:render)
                                                  |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |options)
                                          |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                            :data $ {}
                                              |T $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:render)
                                                  |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |options)
                                              |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |on-close)
                                      |X $ %{} :Expr (:at 1767977273133) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Expr (:at 1767977273133) (:by |sync)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |some?)
                                              |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:render-body)
                                                  |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |options)
                                          |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                            :data $ {}
                                              |T $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:render-body)
                                                  |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |options)
                                              |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |on-close)
                                      |Z $ %{} :Expr (:at 1767977273133) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |true)
                                          |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text "|\"TODO render body")
                              |Z $ %{} :Expr (:at 1767977273133) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |comp-esc-listener)
                                  |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |show?)
                                  |X $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |on-close)
          :examples $ []
            quote $ comp-drawer
              {} (:title |Settings)
                :render $ fn (on-close)
                  div ({}) (<> |Content)
              , show? on-close
        |comp-esc-listener $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1767546522350) (:by |sync)
            :data $ {}
              |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |defcomp)
              |V $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |comp-esc-listener)
              |X $ %{} :Expr (:at 1767546522350) (:by |sync)
                :data $ {}
                  |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |show?)
                  |V $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |on-close!)
              |Z $ %{} :Expr (:at 1767546522350) (:by |sync)
                :data $ {}
                  |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |[])
                  |V $ %{} :Expr (:at 1767546522350) (:by |sync)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |effect-keydown)
                  |X $ %{} :Expr (:at 1767546522350) (:by |sync)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |div)
                      |V $ %{} :Expr (:at 1767546522350) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |{})
                          |V $ %{} :Expr (:at 1767546522350) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |:style)
                              |V $ %{} :Expr (:at 1767546522350) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |{})
                                  |V $ %{} :Expr (:at 1767546522350) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |:position)
                                      |V $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |:absolute)
                          |X $ %{} :Expr (:at 1767546522350) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |:on-keydown)
                              |V $ %{} :Expr (:at 1767546522350) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |fn)
                                  |V $ %{} :Expr (:at 1767546522350) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |e)
                                      |V $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |d!)
                                  |X $ %{} :Expr (:at 1767546522350) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |on-close!)
                                      |V $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |d!)
          :examples $ []
        |comp-modal $ %{} :CodeEntry (:doc "||Modal component. Renders a modal dialog with custom content via :render function in options.")
          :code $ %{} :Expr (:at 1767977273133) (:by |sync)
            :data $ {}
              |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |defcomp)
              |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |comp-modal)
              |X $ %{} :Expr (:at 1767977273133) (:by |sync)
                :data $ {}
                  |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |options)
                  |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |show?)
                  |X $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |on-close)
              |Z $ %{} :Expr (:at 1767977273133) (:by |sync)
                :data $ {}
                  |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |[])
                  |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |effect-fade)
                      |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |show?)
                  |X $ %{} :Expr (:at 1767977273133) (:by |sync)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |div)
                      |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |{})
                          |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:style)
                              |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |merge)
                                  |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |{})
                                      |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:position)
                                          |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:absolute)
                                  |X $ %{} :Expr (:at 1767977273133) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:container-style)
                                      |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |options)
                      |X $ %{} :Expr (:at 1767977273133) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |if)
                          |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |show?)
                          |X $ %{} :Expr (:at 1767977273133) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |div)
                              |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |{})
                                  |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:class-name)
                                      |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |str-spaced)
                                          |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |css/fullscreen)
                                          |X $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |css/center)
                                          |Z $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |style-modal-backdrop)
                                          |b $ %{} :Expr (:at 1767977273133) (:by |sync)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |get)
                                              |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |options)
                                              |X $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:backdrop-class)
                                  |X $ %{} :Expr (:at 1767977273133) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:style)
                                      |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:backdrop-style)
                                          |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |options)
                                  |Z $ %{} :Expr (:at 1767977273133) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:on-click)
                                      |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |fn)
                                          |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |e)
                                              |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |d!)
                                          |X $ %{} :Expr (:at 1767977273133) (:by |sync)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |let)
                                              |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                :data $ {}
                                                  |T $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |event)
                                                      |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:event)
                                                          |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |e)
                                              |X $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |.!stopPropagation)
                                                  |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |event)
                                              |Z $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |on-close)
                                                  |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |d!)
                              |X $ %{} :Expr (:at 1767977273133) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |div)
                                  |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |{})
                                      |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:class-name)
                                          |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |str-spaced)
                                              |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |css/global)
                                              |X $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |css/column)
                                              |Z $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |style-modal-card)
                                              |b $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |get)
                                                  |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |options)
                                                  |X $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:card-class)
                                      |X $ %{} :Expr (:at 1767977273133) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:style)
                                          |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |merge)
                                              |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |{})
                                                  |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:padding)
                                                      |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |0)
                                              |X $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:style)
                                                  |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |options)
                                              |Z $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |get)
                                                  |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |options)
                                                  |X $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:card-style)
                                      |Z $ %{} :Expr (:at 1767977273133) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:on-click)
                                          |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |fn)
                                              |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |e)
                                                  |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |d!)
                                              |X $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |nil)
                                  |X $ %{} :Expr (:at 1767977273133) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |let)
                                      |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Expr (:at 1767977273133) (:by |sync)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |title)
                                              |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:title)
                                                  |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |options)
                                      |X $ %{} :Expr (:at 1767977273133) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |if)
                                          |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |some?)
                                              |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |title)
                                          |X $ %{} :Expr (:at 1767977273133) (:by |sync)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |div)
                                              |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |{})
                                                  |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:class-name)
                                                      |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |str-spaced)
                                                          |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |css/center)
                                                          |X $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |css/font-fancy!)
                                                          |Z $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |style-modal-title)
                                              |X $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |<>)
                                                  |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |title)
                                  |Z $ %{} :Expr (:at 1767977273133) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |cond)
                                      |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Expr (:at 1767977273133) (:by |sync)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |some?)
                                              |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:render)
                                                  |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |options)
                                          |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                            :data $ {}
                                              |T $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:render)
                                                  |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |options)
                                              |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |on-close)
                                      |X $ %{} :Expr (:at 1767977273133) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Expr (:at 1767977273133) (:by |sync)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |some?)
                                              |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:render-body)
                                                  |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |options)
                                          |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                            :data $ {}
                                              |T $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:render-body)
                                                  |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |options)
                                              |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |on-close)
                                      |Z $ %{} :Expr (:at 1767977273133) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |true)
                                          |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text "|\"TODO render body")
                              |Z $ %{} :Expr (:at 1767977273133) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |comp-esc-listener)
                                  |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |show?)
                                  |X $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |on-close)
          :examples $ []
            quote $ comp-modal
              {} (:title |Dialog)
                :render $ fn (on-close)
                  div ({}) (<> |Content)
              , show? on-close
        |comp-modal-menu $ %{} :CodeEntry (:doc "||Modal menu component. Shows a modal dialog with a list of selectable items. Define items via :items in options.")
          :code $ %{} :Expr (:at 1767977273133) (:by |sync)
            :data $ {}
              |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |defcomp)
              |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |comp-modal-menu)
              |X $ %{} :Expr (:at 1767977273133) (:by |sync)
                :data $ {}
                  |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |options)
                  |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |show?)
                  |X $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |on-close!)
                  |Z $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |on-select!)
              |Z $ %{} :Expr (:at 1767977273133) (:by |sync)
                :data $ {}
                  |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |[])
                  |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |effect-fade)
                      |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |show?)
                  |X $ %{} :Expr (:at 1767977273133) (:by |sync)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |div)
                      |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |{})
                      |X $ %{} :Expr (:at 1767977273133) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |if)
                          |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |show?)
                          |X $ %{} :Expr (:at 1767977273133) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |div)
                              |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |{})
                                  |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:class-name)
                                      |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |str-spaced)
                                          |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |css/fullscreen)
                                          |X $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |css/center)
                                          |Z $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |style-modal-backdrop)
                                          |b $ %{} :Expr (:at 1767977273133) (:by |sync)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |get)
                                              |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |options)
                                              |X $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:backdrop-class)
                                  |X $ %{} :Expr (:at 1767977273133) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:style)
                                      |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:backdrop-style)
                                          |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |options)
                                  |Z $ %{} :Expr (:at 1767977273133) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:on-click)
                                      |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |fn)
                                          |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |e)
                                              |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |d!)
                                          |X $ %{} :Expr (:at 1767977273133) (:by |sync)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |let)
                                              |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                :data $ {}
                                                  |T $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |event)
                                                      |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:event)
                                                          |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |e)
                                              |X $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |.!stopPropagation)
                                                  |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |event)
                                              |Z $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |on-close!)
                                                  |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |d!)
                              |X $ %{} :Expr (:at 1767977273133) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |div)
                                  |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |{})
                                      |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:class-name)
                                          |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |str-spaced)
                                              |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |css/global)
                                              |X $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |css/column)
                                              |Z $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |style-modal-card)
                                              |b $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |get)
                                                  |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |options)
                                                  |X $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:card-class)
                                      |X $ %{} :Expr (:at 1767977273133) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:style)
                                          |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |merge)
                                              |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |{})
                                                  |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:padding)
                                                      |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |0)
                                              |X $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:style)
                                                  |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |options)
                                      |Z $ %{} :Expr (:at 1767977273133) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:on-click)
                                          |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |fn)
                                              |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |e)
                                                  |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |d!)
                                              |X $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |nil)
                                  |X $ %{} :Expr (:at 1767977273133) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |let)
                                      |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Expr (:at 1767977273133) (:by |sync)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |title)
                                              |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:title)
                                                  |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |options)
                                      |X $ %{} :Expr (:at 1767977273133) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |if)
                                          |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |some?)
                                              |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |title)
                                          |X $ %{} :Expr (:at 1767977273133) (:by |sync)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |div)
                                              |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |{})
                                                  |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:class-name)
                                                      |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |str-spaced)
                                                          |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |css/row-parted)
                                                          |X $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |css/font-fancy!)
                                                  |X $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:style)
                                                      |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |{})
                                                          |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:padding)
                                                              |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text "|\"4px 8px")
                                                          |X $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:color)
                                                              |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |hsl)
                                                                  |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |0)
                                                                  |X $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |0)
                                                                  |Z $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |70)
                                              |X $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |span)
                                                  |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |{})
                                              |Z $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |<>)
                                                  |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |title)
                                              |b $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |span)
                                                  |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |{})
                                                      |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:inner-text)
                                                          |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text "|\"Clear")
                                                      |X $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:class-name)
                                                          |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |style-clear)
                                                      |Z $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:on-click)
                                                          |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |fn)
                                                              |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |e)
                                                                  |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |d!)
                                                              |X $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |on-select!)
                                                                  |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |nil)
                                                                  |X $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |d!)
                                  |Z $ %{} :Expr (:at 1767977273133) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |list->)
                                      |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |{})
                                      |X $ %{} :Expr (:at 1767977273133) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |->)
                                          |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:items)
                                              |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |options)
                                          |X $ %{} :Expr (:at 1767977273133) (:by |sync)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |map)
                                              |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |fn)
                                                  |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |info)
                                                  |X $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |let)
                                                      |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                        :data $ {}
                                                          |T $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |item)
                                                              |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |cond)
                                                                  |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                                    :data $ {}
                                                                      |T $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                                        :data $ {}
                                                                          |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |tuple?)
                                                                          |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |info)
                                                                      |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |info)
                                                                  |X $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                                    :data $ {}
                                                                      |T $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                                        :data $ {}
                                                                          |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |map?)
                                                                          |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |info)
                                                                      |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                                        :data $ {}
                                                                          |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |::)
                                                                          |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:item)
                                                                          |X $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                                            :data $ {}
                                                                              |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |&map:get)
                                                                              |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |info)
                                                                              |X $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:value)
                                                                          |Z $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                                            :data $ {}
                                                                              |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |&map:get)
                                                                              |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |info)
                                                                              |X $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:display)
                                                                  |Z $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                                    :data $ {}
                                                                      |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |true)
                                                                      |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                                        :data $ {}
                                                                          |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |raise)
                                                                          |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text "|\"Unknown menu item")
                                                      |X $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |tag-match)
                                                          |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |item)
                                                          |X $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                            :data $ {}
                                                              |T $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:item)
                                                                  |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |v)
                                                                  |X $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |l)
                                                              |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |[])
                                                                  |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |v)
                                                                  |X $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                                    :data $ {}
                                                                      |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |div)
                                                                      |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                                        :data $ {}
                                                                          |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |{})
                                                                          |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                                            :data $ {}
                                                                              |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:class-name)
                                                                              |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |style-menu-item)
                                                                          |X $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                                            :data $ {}
                                                                              |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:on-click)
                                                                              |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                                                :data $ {}
                                                                                  |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |fn)
                                                                                  |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                                                    :data $ {}
                                                                                      |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |e)
                                                                                      |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |d!)
                                                                                  |X $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                                                    :data $ {}
                                                                                      |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |on-select!)
                                                                                      |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |item)
                                                                                      |X $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |d!)
                                                                      |X $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                                        :data $ {}
                                                                          |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |if)
                                                                          |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                                            :data $ {}
                                                                              |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |string?)
                                                                              |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |l)
                                                                          |X $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                                            :data $ {}
                                                                              |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |<>)
                                                                              |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |l)
                                                                          |Z $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |l)
                              |Z $ %{} :Expr (:at 1767977273133) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |comp-esc-listener)
                                  |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |show?)
                                  |X $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |on-close!)
          :examples $ []
            quote $ comp-modal-menu
              {} (:title |Choose)
                :items $ [] (:: :item |a |A) (:: :item |b |B)
              , show? on-close! on-select!
        |comp-prompt-modal $ %{} :CodeEntry (:doc "||Prompt modal component. Shows a dialog with text input field and validation. Used internally by use-prompt hook.")
          :code $ %{} :Expr (:at 1767977273133) (:by |sync)
            :data $ {}
              |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |defcomp)
              |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |comp-prompt-modal)
              |X $ %{} :Expr (:at 1767977273133) (:by |sync)
                :data $ {}
                  |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |states)
                  |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |options)
                  |X $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |show?)
                  |Z $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |on-finish!)
                  |b $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |on-close!)
              |Z $ %{} :Expr (:at 1767977273133) (:by |sync)
                :data $ {}
                  |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |let)
                  |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                    :data $ {}
                      |T $ %{} :Expr (:at 1767977273133) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |initial-text)
                          |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |either)
                              |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:initial)
                                  |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |options)
                              |X $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text "|\"")
                      |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |cursor)
                          |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:cursor)
                              |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |states)
                      |X $ %{} :Expr (:at 1767977273133) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |state)
                          |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |either)
                              |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:data)
                                  |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |states)
                              |X $ %{} :Expr (:at 1767977273133) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |{})
                                  |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:text)
                                      |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |initial-text)
                                  |X $ %{} :Expr (:at 1767977273133) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:failure)
                                      |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |nil)
                      |Z $ %{} :Expr (:at 1767977273133) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |text)
                          |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |either)
                              |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:text)
                                  |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |state)
                              |X $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |initial-text)
                      |b $ %{} :Expr (:at 1767977273133) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |check-submit!)
                          |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |fn)
                              |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |d!)
                              |X $ %{} :Expr (:at 1767977273133) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |let)
                                  |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Expr (:at 1767977273133) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |validator)
                                          |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:validator)
                                              |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |options)
                                      |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |result)
                                          |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |if)
                                              |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |fn?)
                                                  |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |validator)
                                              |X $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |validator)
                                                  |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |text)
                                              |Z $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |nil)
                                  |X $ %{} :Expr (:at 1767977273133) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |if)
                                      |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |some?)
                                          |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |result)
                                      |X $ %{} :Expr (:at 1767977273133) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |d!)
                                          |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |cursor)
                                          |X $ %{} :Expr (:at 1767977273133) (:by |sync)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |assoc)
                                              |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |state)
                                              |X $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:failure)
                                              |Z $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |result)
                                      |Z $ %{} :Expr (:at 1767977273133) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |do)
                                          |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |on-finish!)
                                              |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |text)
                                              |X $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |d!)
                                          |X $ %{} :Expr (:at 1767977273133) (:by |sync)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |on-close!)
                                              |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |d!)
                                          |Z $ %{} :Expr (:at 1767977273133) (:by |sync)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |d!)
                                              |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |cursor)
                                              |X $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |->)
                                                  |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |state)
                                                  |X $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |assoc)
                                                      |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:text)
                                                      |X $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |nil)
                                                  |Z $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |assoc)
                                                      |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:failure)
                                                      |X $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |nil)
                  |X $ %{} :Expr (:at 1767977273133) (:by |sync)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |[])
                      |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |effect-select)
                          |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |str)
                              |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text "|\".")
                              |X $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |schema/input-box-name)
                          |X $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |show?)
                      |X $ %{} :Expr (:at 1767977273133) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |effect-fade)
                          |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |show?)
                      |Z $ %{} :Expr (:at 1767977273133) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |div)
                          |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |{})
                              |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:style)
                                  |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |{})
                                      |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:position)
                                          |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:absolute)
                          |X $ %{} :Expr (:at 1767977273133) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |if)
                              |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |show?)
                              |X $ %{} :Expr (:at 1767977273133) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |div)
                                  |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |{})
                                      |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:class-name)
                                          |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |str-spaced)
                                              |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |css/fullscreen)
                                              |X $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |css/center)
                                              |Z $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |style-modal-backdrop)
                                              |b $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |get)
                                                  |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |options)
                                                  |X $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:backdrop-class)
                                      |X $ %{} :Expr (:at 1767977273133) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:style)
                                          |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |merge)
                                              |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |{})
                                                  |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:line-height)
                                                      |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text "|\"32px")
                                              |X $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:backdrop-style)
                                                  |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |options)
                                      |Z $ %{} :Expr (:at 1767977273133) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:on-click)
                                          |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |fn)
                                              |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |e)
                                                  |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |d!)
                                              |X $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |on-close!)
                                                  |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |d!)
                                              |Z $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |d!)
                                                  |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |cursor)
                                                  |X $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |->)
                                                      |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |state)
                                                      |X $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |assoc)
                                                          |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:text)
                                                          |X $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |nil)
                                                      |Z $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |assoc)
                                                          |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:failure)
                                                          |X $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |nil)
                                  |X $ %{} :Expr (:at 1767977273133) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |div)
                                      |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |{})
                                          |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:class-name)
                                              |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |str-spaced)
                                                  |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |css/global)
                                                  |X $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |css/column)
                                                  |Z $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |style-modal-card)
                                                  |b $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |get)
                                                      |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |options)
                                                      |X $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:card-class)
                                          |X $ %{} :Expr (:at 1767977273133) (:by |sync)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:style)
                                              |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:card-style)
                                                  |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |options)
                                          |Z $ %{} :Expr (:at 1767977273133) (:by |sync)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:on-click)
                                              |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |fn)
                                                  |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |e)
                                                      |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |d!)
                                                  |X $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |nil)
                                      |X $ %{} :Expr (:at 1767977273133) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |div)
                                          |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |{})
                                          |X $ %{} :Expr (:at 1767977273133) (:by |sync)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |<>)
                                              |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |either)
                                                  |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:text)
                                                      |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |options)
                                                  |X $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text "|\"Type in text")
                                      |Z $ %{} :Expr (:at 1767977273133) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |=<)
                                          |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |nil)
                                          |X $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |8)
                                      |b $ %{} :Expr (:at 1767977273133) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |let)
                                          |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                            :data $ {}
                                              |T $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |props)
                                                  |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |{})
                                                      |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:value)
                                                          |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |text)
                                                      |X $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:on-input)
                                                          |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |fn)
                                                              |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |e)
                                                                  |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |d!)
                                                              |X $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |d!)
                                                                  |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |cursor)
                                                                  |X $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                                    :data $ {}
                                                                      |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |assoc)
                                                                      |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |state)
                                                                      |X $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:text)
                                                                      |Z $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                                        :data $ {}
                                                                          |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:value)
                                                                          |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |e)
                                                      |Z $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:on-keydown)
                                                          |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |fn)
                                                              |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |e)
                                                                  |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |d!)
                                                              |X $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |cond)
                                                                  |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                                    :data $ {}
                                                                      |T $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                                        :data $ {}
                                                                          |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |and)
                                                                          |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                                            :data $ {}
                                                                              |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |not=)
                                                                              |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |229)
                                                                              |X $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                                                :data $ {}
                                                                                  |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:keycode)
                                                                                  |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |e)
                                                                          |X $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                                            :data $ {}
                                                                              |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |=)
                                                                              |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                                                :data $ {}
                                                                                  |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:key)
                                                                                  |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |e)
                                                                              |X $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text "|\"Enter")
                                                                      |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                                        :data $ {}
                                                                          |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |if)
                                                                          |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                                            :data $ {}
                                                                              |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:multiline?)
                                                                              |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |options)
                                                                          |X $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                                            :data $ {}
                                                                              |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |when)
                                                                              |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                                                :data $ {}
                                                                                  |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |.-metaKey)
                                                                                  |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                                                    :data $ {}
                                                                                      |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:event)
                                                                                      |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |e)
                                                                              |X $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                                                :data $ {}
                                                                                  |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |check-submit!)
                                                                                  |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |d!)
                                                                          |Z $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                                            :data $ {}
                                                                              |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |check-submit!)
                                                                              |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |d!)
                                                                  |X $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                                    :data $ {}
                                                                      |T $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                                        :data $ {}
                                                                          |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |=)
                                                                          |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                                            :data $ {}
                                                                              |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:key)
                                                                              |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |e)
                                                                          |X $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text "|\"Escape")
                                                                      |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                                        :data $ {}
                                                                          |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |on-close!)
                                                                          |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |d!)
                                                                  |Z $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                                    :data $ {}
                                                                      |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |true)
                                                                      |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |nil)
                                                      |b $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:placeholder)
                                                          |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |either)
                                                              |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:placeholder)
                                                                  |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |options)
                                                              |X $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text "|\"")
                                          |X $ %{} :Expr (:at 1767977273133) (:by |sync)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |if)
                                              |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:multiline?)
                                                  |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |options)
                                              |X $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |textarea)
                                                  |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |merge)
                                                      |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |props)
                                                      |X $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |{})
                                                          |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:class-name)
                                                              |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |str-spaced)
                                                                  |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |schema/input-box-name)
                                                                  |X $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |css/textarea)
                                                                  |Z $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                                    :data $ {}
                                                                      |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |get)
                                                                      |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |options)
                                                                      |X $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:input-class)
                                                          |X $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:style)
                                                              |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |merge)
                                                                  |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                                    :data $ {}
                                                                      |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |{})
                                                                      |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                                        :data $ {}
                                                                          |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:width)
                                                                          |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text "|\"100%")
                                                                      |X $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                                        :data $ {}
                                                                          |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:min-height)
                                                                          |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |120)
                                                                      |Z $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                                        :data $ {}
                                                                          |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:max-height)
                                                                          |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text "|\"50vh")
                                                                  |X $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                                    :data $ {}
                                                                      |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |get)
                                                                      |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |options)
                                                                      |X $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:input-style)
                                              |Z $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |input)
                                                  |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |merge)
                                                      |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |props)
                                                      |X $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |{})
                                                          |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:class-name)
                                                              |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |str-spaced)
                                                                  |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |schema/input-box-name)
                                                                  |X $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |css/input)
                                                                  |Z $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                                    :data $ {}
                                                                      |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |get)
                                                                      |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |options)
                                                                      |X $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:input-class)
                                                          |X $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:style)
                                                              |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |merge)
                                                                  |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                                    :data $ {}
                                                                      |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |{})
                                                                      |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                                        :data $ {}
                                                                          |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:width)
                                                                          |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text "|\"100%")
                                                                  |X $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                                    :data $ {}
                                                                      |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |get)
                                                                      |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |options)
                                                                      |X $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:input-style)
                                      |d $ %{} :Expr (:at 1767977273133) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |=<)
                                          |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |nil)
                                          |X $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |16)
                                      |f $ %{} :Expr (:at 1767977273133) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |div)
                                          |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |{})
                                              |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:class-name)
                                                  |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |css/row-parted)
                                          |X $ %{} :Expr (:at 1767977273133) (:by |sync)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |let)
                                              |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                :data $ {}
                                                  |T $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |failure)
                                                      |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:failure)
                                                          |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |state)
                                              |X $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |if)
                                                  |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |some?)
                                                      |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |failure)
                                                  |X $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |span)
                                                      |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |{})
                                                          |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:style)
                                                              |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |merge)
                                                                  |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |ui/flex)
                                                                  |X $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                                    :data $ {}
                                                                      |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |{})
                                                                      |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                                        :data $ {}
                                                                          |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:color)
                                                                          |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:red)
                                                                      |X $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                                        :data $ {}
                                                                          |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:line-height)
                                                                          |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text "|\"20px")
                                                          |X $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:inner-text)
                                                              |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |failure)
                                                  |Z $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |span)
                                                      |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |{})
                                          |Z $ %{} :Expr (:at 1767977273133) (:by |sync)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |button)
                                              |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |{})
                                                  |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:class-name)
                                                      |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |str-spaced)
                                                          |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |css/button)
                                                          |X $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |get)
                                                              |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |options)
                                                              |X $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:confirm-class)
                                                  |X $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:on-click)
                                                      |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |fn)
                                                          |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |e)
                                                              |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |d!)
                                                          |X $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |check-submit!)
                                                              |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |d!)
                                              |X $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |<>)
                                                  |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |either)
                                                      |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:button-text)
                                                          |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |options)
                                                      |X $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text "|\"Finish")
                                  |Z $ %{} :Expr (:at 1767977273133) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |comp-esc-listener)
                                      |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |show?)
                                      |X $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |on-close!)
          :examples $ []
            quote $ comp-prompt-modal states
              {} (:text "|Enter name") (:placeholder |name)
              , show? on-finish! on-close!
        |effect-fade $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1767546522350) (:by |sync)
            :data $ {}
              |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |defeffect)
              |V $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |effect-fade)
              |X $ %{} :Expr (:at 1767546522350) (:by |sync)
                :data $ {}
                  |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |show?)
              |Z $ %{} :Expr (:at 1767546522350) (:by |sync)
                :data $ {}
                  |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |action)
                  |V $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |el)
                  |X $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |at-place?)
              |b $ %{} :Expr (:at 1767546522350) (:by |sync)
                :data $ {}
                  |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |case-default)
                  |V $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |action)
                  |X $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |nil)
                  |Z $ %{} :Expr (:at 1767546522350) (:by |sync)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |:before-update)
                      |V $ %{} :Expr (:at 1767546522350) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |if)
                          |V $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |show?)
                          |X $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |nil)
                          |Z $ %{} :Expr (:at 1767546522350) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |if)
                              |V $ %{} :Expr (:at 1767546522350) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |some?)
                                  |V $ %{} :Expr (:at 1767546522350) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |.-firstElementChild)
                                      |V $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |el)
                              |X $ %{} :Expr (:at 1767546522350) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |let)
                                  |V $ %{} :Expr (:at 1767546522350) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Expr (:at 1767546522350) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |target)
                                          |V $ %{} :Expr (:at 1767546522350) (:by |sync)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |.-firstElementChild)
                                              |V $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |el)
                                      |V $ %{} :Expr (:at 1767546522350) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |cloned)
                                          |V $ %{} :Expr (:at 1767546522350) (:by |sync)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |.!cloneNode)
                                              |V $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |target)
                                              |X $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |true)
                                      |X $ %{} :Expr (:at 1767546522350) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |style)
                                          |V $ %{} :Expr (:at 1767546522350) (:by |sync)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |.-style)
                                              |V $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |cloned)
                                      |Z $ %{} :Expr (:at 1767546522350) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |card-style)
                                          |V $ %{} :Expr (:at 1767546522350) (:by |sync)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |->)
                                              |V $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |cloned)
                                              |X $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |.-firstElementChild)
                                              |Z $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |.-style)
                                  |X $ %{} :Expr (:at 1767546522350) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |js/document.body.appendChild)
                                      |V $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |cloned)
                                  |Z $ %{} :Expr (:at 1767546522350) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |js/setTimeout)
                                      |V $ %{} :Expr (:at 1767546522350) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |fn)
                                          |V $ %{} :Expr (:at 1767546522350) (:by |sync)
                                            :data $ {}
                                          |X $ %{} :Expr (:at 1767546522350) (:by |sync)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |set!)
                                              |V $ %{} :Expr (:at 1767546522350) (:by |sync)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |.-opacity)
                                                  |V $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |style)
                                              |X $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |0)
                                          |Z $ %{} :Expr (:at 1767546522350) (:by |sync)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |set!)
                                              |V $ %{} :Expr (:at 1767546522350) (:by |sync)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |.-transitionDuration)
                                                  |V $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |card-style)
                                              |X $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text "|\"240ms")
                                          |b $ %{} :Expr (:at 1767546522350) (:by |sync)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |set!)
                                              |V $ %{} :Expr (:at 1767546522350) (:by |sync)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |.-transform)
                                                  |V $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |card-style)
                                              |X $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text "|\"scale(0.94) translate(0px,-20px)")
                                      |X $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |10)
                                  |b $ %{} :Expr (:at 1767546522350) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |js/setTimeout)
                                      |V $ %{} :Expr (:at 1767546522350) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |fn)
                                          |V $ %{} :Expr (:at 1767546522350) (:by |sync)
                                            :data $ {}
                                          |X $ %{} :Expr (:at 1767546522350) (:by |sync)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |.!remove)
                                              |V $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |cloned)
                                      |X $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |240)
                  |b $ %{} :Expr (:at 1767546522350) (:by |sync)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |:update)
                      |V $ %{} :Expr (:at 1767546522350) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |if)
                          |V $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |show?)
                          |X $ %{} :Expr (:at 1767546522350) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |let)
                              |V $ %{} :Expr (:at 1767546522350) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Expr (:at 1767546522350) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |target)
                                      |V $ %{} :Expr (:at 1767546522350) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |.-firstElementChild)
                                          |V $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |el)
                                  |V $ %{} :Expr (:at 1767546522350) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |card-style)
                                      |V $ %{} :Expr (:at 1767546522350) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |->)
                                          |V $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |target)
                                          |X $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |.-firstElementChild)
                                          |Z $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |.-style)
                                  |X $ %{} :Expr (:at 1767546522350) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |style)
                                      |V $ %{} :Expr (:at 1767546522350) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |.-style)
                                          |V $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |target)
                              |X $ %{} :Expr (:at 1767546522350) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |set!)
                                  |V $ %{} :Expr (:at 1767546522350) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |.-opacity)
                                      |V $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |style)
                                  |X $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |0)
                              |Z $ %{} :Expr (:at 1767546522350) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |set!)
                                  |V $ %{} :Expr (:at 1767546522350) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |.-transform)
                                      |V $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |card-style)
                                  |X $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text "|\"scale(0.94) translate(0px,-20px)")
                              |b $ %{} :Expr (:at 1767546522350) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |js/setTimeout)
                                  |V $ %{} :Expr (:at 1767546522350) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |fn)
                                      |V $ %{} :Expr (:at 1767546522350) (:by |sync)
                                        :data $ {}
                                      |X $ %{} :Expr (:at 1767546522350) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |set!)
                                          |V $ %{} :Expr (:at 1767546522350) (:by |sync)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |.-transitionDuration)
                                              |V $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |style)
                                          |X $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text "|\"240ms")
                                      |Z $ %{} :Expr (:at 1767546522350) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |set!)
                                          |V $ %{} :Expr (:at 1767546522350) (:by |sync)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |.-transitionDuration)
                                              |V $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |card-style)
                                          |X $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text "|\"240ms")
                                      |b $ %{} :Expr (:at 1767546522350) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |set!)
                                          |V $ %{} :Expr (:at 1767546522350) (:by |sync)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |.-opacity)
                                              |V $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |style)
                                          |X $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |1)
                                      |d $ %{} :Expr (:at 1767546522350) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |set!)
                                          |V $ %{} :Expr (:at 1767546522350) (:by |sync)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |.-transform)
                                              |V $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |card-style)
                                          |X $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text "|\"scale(1) translate(0px,0px)")
                                  |X $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |10)
                          |Z $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |nil)
          :examples $ []
        |effect-focus $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1767546522350) (:by |sync)
            :data $ {}
              |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |defeffect)
              |V $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |effect-focus)
              |X $ %{} :Expr (:at 1767546522350) (:by |sync)
                :data $ {}
                  |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |query)
                  |V $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |show?)
              |Z $ %{} :Expr (:at 1767546522350) (:by |sync)
                :data $ {}
                  |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |action)
                  |V $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |el)
                  |X $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |at-place?)
              |b $ %{} :Expr (:at 1767546522350) (:by |sync)
                :data $ {}
                  |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |case-default)
                  |V $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |action)
                  |X $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |nil)
                  |Z $ %{} :Expr (:at 1767546522350) (:by |sync)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |:update)
                      |V $ %{} :Expr (:at 1767546522350) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |when)
                          |V $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |show?)
                          |X $ %{} :Expr (:at 1767546522350) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |focus-element!)
                              |V $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |query)
          :examples $ []
        |effect-keydown $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1767546522349) (:by |sync)
            :data $ {}
              |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |defeffect)
              |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |effect-keydown)
              |X $ %{} :Expr (:at 1767546522349) (:by |sync)
                :data $ {}
              |Z $ %{} :Expr (:at 1767546522349) (:by |sync)
                :data $ {}
                  |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |action)
                  |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |el)
                  |X $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |at?)
              |b $ %{} :Expr (:at 1767546522349) (:by |sync)
                :data $ {}
                  |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |case-default)
                  |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |action)
                  |X $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |nil)
                  |Z $ %{} :Expr (:at 1767546522349) (:by |sync)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |:mount)
                      |V $ %{} :Expr (:at 1767546522349) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |let)
                          |V $ %{} :Expr (:at 1767546522349) (:by |sync)
                            :data $ {}
                              |T $ %{} :Expr (:at 1767546522349) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |f)
                                  |V $ %{} :Expr (:at 1767546522349) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |fn)
                                      |V $ %{} :Expr (:at 1767546522349) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |event)
                                      |X $ %{} :Expr (:at 1767546522349) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |if)
                                          |V $ %{} :Expr (:at 1767546522349) (:by |sync)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |=)
                                              |V $ %{} :Expr (:at 1767546522349) (:by |sync)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |.-key)
                                                  |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |event)
                                              |X $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text "|\"Escape")
                                          |X $ %{} :Expr (:at 1767546522349) (:by |sync)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |let)
                                              |V $ %{} :Expr (:at 1767546522349) (:by |sync)
                                                :data $ {}
                                                  |T $ %{} :Expr (:at 1767546522349) (:by |sync)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |new-event)
                                                      |V $ %{} :Expr (:at 1767546522349) (:by |sync)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |new)
                                                          |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |js/MouseEvent)
                                                          |X $ %{} :Expr (:at 1767546522349) (:by |sync)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |.-type)
                                                              |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |event)
                                                          |Z $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |event)
                                              |X $ %{} :Expr (:at 1767546522349) (:by |sync)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |.!dispatchEvent)
                                                  |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |el)
                                                  |X $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |new-event)
                          |X $ %{} :Expr (:at 1767546522349) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |js/window.addEventListener)
                              |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text "|\"keydown")
                              |X $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |f)
                          |Z $ %{} :Expr (:at 1767546522349) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |aset)
                              |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |el)
                              |X $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text "|\"_listener")
                              |Z $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |f)
                  |b $ %{} :Expr (:at 1767546522349) (:by |sync)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |:unmount)
                      |V $ %{} :Expr (:at 1767546522349) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |let)
                          |V $ %{} :Expr (:at 1767546522349) (:by |sync)
                            :data $ {}
                              |T $ %{} :Expr (:at 1767546522349) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |f)
                                  |V $ %{} :Expr (:at 1767546522349) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |aget)
                                      |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |el)
                                      |X $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text "|\"_listener")
                          |X $ %{} :Expr (:at 1767546522349) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |js/window.removeEventListener)
                              |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text "|\"keydown")
                              |X $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |f)
                          |Z $ %{} :Expr (:at 1767546522349) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |aset)
                              |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |el)
                              |X $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text "|\"_listener")
                              |Z $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |nil)
          :examples $ []
        |effect-select $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1767546522350) (:by |sync)
            :data $ {}
              |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |defeffect)
              |V $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |effect-select)
              |X $ %{} :Expr (:at 1767546522350) (:by |sync)
                :data $ {}
                  |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |query)
                  |V $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |show?)
              |Z $ %{} :Expr (:at 1767546522350) (:by |sync)
                :data $ {}
                  |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |action)
                  |V $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |el)
                  |X $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |*local)
              |b $ %{} :Expr (:at 1767546522350) (:by |sync)
                :data $ {}
                  |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |case-default)
                  |V $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |action)
                  |X $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |nil)
                  |Z $ %{} :Expr (:at 1767546522350) (:by |sync)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |:update)
                      |V $ %{} :Expr (:at 1767546522350) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |when)
                          |V $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |show?)
                          |X $ %{} :Expr (:at 1767546522350) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |select-element!)
                              |V $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |query)
          :examples $ []
        |effect-slide $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1767546522350) (:by |sync)
            :data $ {}
              |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |defeffect)
              |V $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |effect-slide)
              |X $ %{} :Expr (:at 1767546522350) (:by |sync)
                :data $ {}
                  |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |show?)
              |Z $ %{} :Expr (:at 1767546522350) (:by |sync)
                :data $ {}
                  |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |action)
                  |V $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |el)
                  |X $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |at-place?)
              |b $ %{} :Expr (:at 1767546522350) (:by |sync)
                :data $ {}
                  |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |case-default)
                  |V $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |action)
                  |X $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |nil)
                  |Z $ %{} :Expr (:at 1767546522350) (:by |sync)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |:before-update)
                      |V $ %{} :Expr (:at 1767546522350) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |if)
                          |V $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |show?)
                          |X $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |nil)
                          |Z $ %{} :Expr (:at 1767546522350) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |if)
                              |V $ %{} :Expr (:at 1767546522350) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |some?)
                                  |V $ %{} :Expr (:at 1767546522350) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |.-firstElementChild)
                                      |V $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |el)
                              |X $ %{} :Expr (:at 1767546522350) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |let)
                                  |V $ %{} :Expr (:at 1767546522350) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Expr (:at 1767546522350) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |target)
                                          |V $ %{} :Expr (:at 1767546522350) (:by |sync)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |.-firstElementChild)
                                              |V $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |el)
                                      |V $ %{} :Expr (:at 1767546522350) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |cloned)
                                          |V $ %{} :Expr (:at 1767546522350) (:by |sync)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |.!cloneNode)
                                              |V $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |target)
                                              |X $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |true)
                                      |X $ %{} :Expr (:at 1767546522350) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |style)
                                          |V $ %{} :Expr (:at 1767546522350) (:by |sync)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |.-style)
                                              |V $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |cloned)
                                      |Z $ %{} :Expr (:at 1767546522350) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |card-style)
                                          |V $ %{} :Expr (:at 1767546522350) (:by |sync)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |->)
                                              |V $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |cloned)
                                              |X $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |.-firstElementChild)
                                              |Z $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |.-style)
                                  |X $ %{} :Expr (:at 1767546522350) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |js/document.body.appendChild)
                                      |V $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |cloned)
                                  |Z $ %{} :Expr (:at 1767546522350) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |js/setTimeout)
                                      |V $ %{} :Expr (:at 1767546522350) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |fn)
                                          |V $ %{} :Expr (:at 1767546522350) (:by |sync)
                                            :data $ {}
                                          |X $ %{} :Expr (:at 1767546522350) (:by |sync)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |set!)
                                              |V $ %{} :Expr (:at 1767546522350) (:by |sync)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |.-opacity)
                                                  |V $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |style)
                                              |X $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |0)
                                          |Z $ %{} :Expr (:at 1767546522350) (:by |sync)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |set!)
                                              |V $ %{} :Expr (:at 1767546522350) (:by |sync)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |.-transitionDuration)
                                                  |V $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |card-style)
                                              |X $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text "|\"240ms")
                                          |b $ %{} :Expr (:at 1767546522350) (:by |sync)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |set!)
                                              |V $ %{} :Expr (:at 1767546522350) (:by |sync)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |.-transform)
                                                  |V $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |card-style)
                                              |X $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text "|\"translate(100%,0px)")
                                      |X $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |10)
                                  |b $ %{} :Expr (:at 1767546522350) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |js/setTimeout)
                                      |V $ %{} :Expr (:at 1767546522350) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |fn)
                                          |V $ %{} :Expr (:at 1767546522350) (:by |sync)
                                            :data $ {}
                                          |X $ %{} :Expr (:at 1767546522350) (:by |sync)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |.!remove)
                                              |V $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |cloned)
                                      |X $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |240)
                  |b $ %{} :Expr (:at 1767546522350) (:by |sync)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |:update)
                      |V $ %{} :Expr (:at 1767546522350) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |if)
                          |V $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |show?)
                          |X $ %{} :Expr (:at 1767546522350) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |let)
                              |V $ %{} :Expr (:at 1767546522350) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Expr (:at 1767546522350) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |target)
                                      |V $ %{} :Expr (:at 1767546522350) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |.-firstElementChild)
                                          |V $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |el)
                                  |V $ %{} :Expr (:at 1767546522350) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |card-style)
                                      |V $ %{} :Expr (:at 1767546522350) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |->)
                                          |V $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |target)
                                          |X $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |.-firstElementChild)
                                          |Z $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |.-style)
                                  |X $ %{} :Expr (:at 1767546522350) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |style)
                                      |V $ %{} :Expr (:at 1767546522350) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |.-style)
                                          |V $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |target)
                              |X $ %{} :Expr (:at 1767546522350) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |set!)
                                  |V $ %{} :Expr (:at 1767546522350) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |.-opacity)
                                      |V $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |style)
                                  |X $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |0)
                              |Z $ %{} :Expr (:at 1767546522350) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |set!)
                                  |V $ %{} :Expr (:at 1767546522350) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |.-transform)
                                      |V $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |card-style)
                                  |X $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text "|\"translate(100%,0px)")
                              |b $ %{} :Expr (:at 1767546522350) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |js/setTimeout)
                                  |V $ %{} :Expr (:at 1767546522350) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |fn)
                                      |V $ %{} :Expr (:at 1767546522350) (:by |sync)
                                        :data $ {}
                                      |X $ %{} :Expr (:at 1767546522350) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |set!)
                                          |V $ %{} :Expr (:at 1767546522350) (:by |sync)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |.-transitionDuration)
                                              |V $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |style)
                                          |X $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text "|\"240ms")
                                      |Z $ %{} :Expr (:at 1767546522350) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |set!)
                                          |V $ %{} :Expr (:at 1767546522350) (:by |sync)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |.-transitionDuration)
                                              |V $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |card-style)
                                          |X $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text "|\"240ms")
                                      |b $ %{} :Expr (:at 1767546522350) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |set!)
                                          |V $ %{} :Expr (:at 1767546522350) (:by |sync)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |.-opacity)
                                              |V $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |style)
                                          |X $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |1)
                                      |d $ %{} :Expr (:at 1767546522350) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |set!)
                                          |V $ %{} :Expr (:at 1767546522350) (:by |sync)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |.-transform)
                                              |V $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |card-style)
                                          |X $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text "|\"translate(0px,0px)")
                                  |X $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |10)
                          |Z $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |nil)
          :examples $ []
        |style-clear $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1767546522350) (:by |sync)
            :data $ {}
              |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |defstyle)
              |V $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |style-clear)
              |X $ %{} :Expr (:at 1767546522350) (:by |sync)
                :data $ {}
                  |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |{})
                  |V $ %{} :Expr (:at 1767546522350) (:by |sync)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text "|\"&")
                      |V $ %{} :Expr (:at 1767546522350) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |{})
                          |V $ %{} :Expr (:at 1767546522350) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |:font-size)
                              |V $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |10)
                          |X $ %{} :Expr (:at 1767546522350) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |:cursor)
                              |V $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |:pointer)
                          |Z $ %{} :Expr (:at 1767546522350) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |:color)
                              |V $ %{} :Expr (:at 1767546522350) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |hsl)
                                  |V $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |270)
                                  |X $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |80)
                                  |Z $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |70)
                          |b $ %{} :Expr (:at 1767546522350) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |:opacity)
                              |V $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |0.6)
                  |X $ %{} :Expr (:at 1767546522350) (:by |sync)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text "|\"&:hover")
                      |V $ %{} :Expr (:at 1767546522350) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |{})
                          |V $ %{} :Expr (:at 1767546522350) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |:opacity)
                              |V $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |1)
          :examples $ []
        |style-drawer-backdrop $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1767546522350) (:by |sync)
            :data $ {}
              |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |defstyle)
              |V $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |style-drawer-backdrop)
              |X $ %{} :Expr (:at 1767546522350) (:by |sync)
                :data $ {}
                  |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |{})
                  |V $ %{} :Expr (:at 1767546522350) (:by |sync)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text "|\"&")
                      |V $ %{} :Expr (:at 1767546522350) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |merge)
                          |V $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |style/backdrop)
                          |X $ %{} :Expr (:at 1767546522350) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |{})
                              |V $ %{} :Expr (:at 1767546522350) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |:padding)
                                  |V $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |0)
          :examples $ []
        |style-drawer-card $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1767546522350) (:by |sync)
            :data $ {}
              |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |defstyle)
              |V $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |style-drawer-card)
              |X $ %{} :Expr (:at 1767546522350) (:by |sync)
                :data $ {}
                  |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |{})
                  |V $ %{} :Expr (:at 1767546522350) (:by |sync)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text "|\"&")
                      |V $ %{} :Expr (:at 1767546522350) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |merge)
                          |V $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |style/card)
                          |X $ %{} :Expr (:at 1767546522350) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |{})
                              |V $ %{} :Expr (:at 1767546522350) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |:line-height)
                                  |V $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text "|\"32px")
                              |X $ %{} :Expr (:at 1767546522350) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |:height)
                                  |V $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text "|\"100%")
                              |Z $ %{} :Expr (:at 1767546522350) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |:max-height)
                                  |V $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text "|\"100vh")
                              |b $ %{} :Expr (:at 1767546522350) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |:margin-right)
                                  |V $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |0)
                              |d $ %{} :Expr (:at 1767546522350) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |:border-radius)
                                  |V $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text "|\"0px")
                              |f $ %{} :Expr (:at 1767546522350) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |:max-width)
                                  |V $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text "|\"50vw")
                              |h $ %{} :Expr (:at 1767546522350) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |:width)
                                  |V $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text "|\"24vw")
                              |j $ %{} :Expr (:at 1767546522350) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |:min-width)
                                  |V $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |360)
                              |l $ %{} :Expr (:at 1767546522350) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |:box-shadow)
                                  |V $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text "|\"-2px 0px 24px 2px hsla(0,0%,0%,0.2)")
                              |n $ %{} :Expr (:at 1767546522350) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |:transition-property)
                                  |V $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text "|\"opacity,transform")
          :examples $ []
        |style-menu-item $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1767546522349) (:by |sync)
            :data $ {}
              |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |defstyle)
              |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |style-menu-item)
              |X $ %{} :Expr (:at 1767546522349) (:by |sync)
                :data $ {}
                  |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |{})
                  |V $ %{} :Expr (:at 1767546522349) (:by |sync)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text "|\"&")
                      |V $ %{} :Expr (:at 1767546522349) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |{})
                          |V $ %{} :Expr (:at 1767546522349) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |:border-top)
                              |V $ %{} :Expr (:at 1767546522349) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |str)
                                  |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text "|\"1px solid ")
                                  |X $ %{} :Expr (:at 1767546522349) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |hsl)
                                      |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |0)
                                      |X $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |0)
                                      |Z $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |90)
                          |X $ %{} :Expr (:at 1767546522349) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |:padding)
                              |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text "|\"0 16px")
                          |Z $ %{} :Expr (:at 1767546522349) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |:cursor)
                              |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |:pointer)
                          |b $ %{} :Expr (:at 1767546522349) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |:white-space)
                              |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |:nowrap)
                          |d $ %{} :Expr (:at 1767546522349) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |:line-height)
                              |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text "|\"40px")
                  |X $ %{} :Expr (:at 1767546522349) (:by |sync)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text "|\"&:hover")
                      |V $ %{} :Expr (:at 1767546522349) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |{})
                          |V $ %{} :Expr (:at 1767546522349) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |:background-color)
                              |V $ %{} :Expr (:at 1767546522349) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |hsl)
                                  |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |0)
                                  |X $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |0)
                                  |Z $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |97)
          :examples $ []
        |style-modal-backdrop $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1767546522350) (:by |sync)
            :data $ {}
              |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |defstyle)
              |V $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |style-modal-backdrop)
              |X $ %{} :Expr (:at 1767546522350) (:by |sync)
                :data $ {}
                  |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |{})
                  |V $ %{} :Expr (:at 1767546522350) (:by |sync)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text "|\"&")
                      |V $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |style/backdrop)
          :examples $ []
        |style-modal-card $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1767546522349) (:by |sync)
            :data $ {}
              |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |defstyle)
              |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |style-modal-card)
              |X $ %{} :Expr (:at 1767546522349) (:by |sync)
                :data $ {}
                  |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |{})
                  |V $ %{} :Expr (:at 1767546522349) (:by |sync)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text "|\"&")
                      |V $ %{} :Expr (:at 1767546522349) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |merge)
                          |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |style/card)
                          |X $ %{} :Expr (:at 1767546522349) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |{})
                              |V $ %{} :Expr (:at 1767546522349) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |:line-height)
                                  |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text "|\"32px")
                              |X $ %{} :Expr (:at 1767546522349) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |:box-shadow)
                                  |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text "|\"0px 2px 24px 0px hsl(0,0%,0%,0.2)")
                              |Z $ %{} :Expr (:at 1767546522349) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |:transition-property)
                                  |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text "|\"opacity,transform")
          :examples $ []
        |style-modal-title $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1767546522349) (:by |sync)
            :data $ {}
              |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |defstyle)
              |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |style-modal-title)
              |X $ %{} :Expr (:at 1767546522349) (:by |sync)
                :data $ {}
                  |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |{})
                  |V $ %{} :Expr (:at 1767546522349) (:by |sync)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text "|\"&")
                      |V $ %{} :Expr (:at 1767546522349) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |{})
                          |V $ %{} :Expr (:at 1767546522349) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |:padding)
                              |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text "|\"8px")
          :examples $ []
        |use-alert $ %{} :CodeEntry (:doc "||Alert dialog hook. Shows a simple message box. Returns a plugin object with .show method to display the alert.")
          :code $ %{} :Expr (:at 1767977273133) (:by |sync)
            :data $ {}
              |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |defplugin)
              |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |use-alert)
              |X $ %{} :Expr (:at 1767977273133) (:by |sync)
                :data $ {}
                  |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |states)
                  |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |options)
              |Z $ %{} :Expr (:at 1767977273133) (:by |sync)
                :data $ {}
                  |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |let)
                  |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                    :data $ {}
                      |T $ %{} :Expr (:at 1767977273133) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |cursor)
                          |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:cursor)
                              |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |states)
                      |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |state)
                          |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |either)
                              |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:data)
                                  |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |states)
                              |X $ %{} :Expr (:at 1767977273133) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |{})
                                  |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:show?)
                                      |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |false)
                                  |X $ %{} :Expr (:at 1767977273133) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:text)
                                      |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:text)
                                          |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |options)
                      |X $ %{} :Expr (:at 1767977273133) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |on-read)
                          |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |either)
                              |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:on-read)
                                  |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |options)
                              |X $ %{} :Expr (:at 1767977273133) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |fn)
                                  |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |e)
                                      |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |d!)
                                  |X $ %{} :Expr (:at 1767977273133) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |d!)
                                      |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |cursor)
                                      |X $ %{} :Expr (:at 1767977273133) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |assoc)
                                          |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |state)
                                          |X $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:show?)
                                          |Z $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |false)
                      |Z $ %{} :Expr (:at 1767977273133) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |node)
                          |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |comp-alert-modal)
                              |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |assoc)
                                  |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |options)
                                  |X $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:text)
                                  |Z $ %{} :Expr (:at 1767977273133) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:text)
                                      |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |state)
                              |X $ %{} :Expr (:at 1767977273133) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:show?)
                                  |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |state)
                              |Z $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |on-read)
                              |b $ %{} :Expr (:at 1767977273133) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |fn)
                                  |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |d!)
                                  |X $ %{} :Expr (:at 1767977273133) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |d!)
                                      |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |cursor)
                                      |X $ %{} :Expr (:at 1767977273133) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |assoc)
                                          |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |state)
                                          |X $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:show?)
                                          |Z $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |false)
                  |X $ %{} :Expr (:at 1767977273133) (:by |sync)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |%::)
                      |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |%alert-actions)
                      |X $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:plugin)
                      |Z $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |node)
                      |b $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |cursor)
                      |d $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |state)
          :examples $ []
            quote $ let
                alert-plugin $ use-alert (>> states :alert)
                  {} $ :text |demo
              button
                {} $ :on-click
                  fn (e d!) (.show alert-plugin d!)
                <> |Show
        |use-confirm $ %{} :CodeEntry (:doc "||Confirm dialog hook. Shows a dialog with confirm/cancel buttons. Returns a plugin object, call .show with a callback function that executes after confirmation.")
          :code $ %{} :Expr (:at 1767977273133) (:by |sync)
            :data $ {}
              |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |defplugin)
              |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |use-confirm)
              |X $ %{} :Expr (:at 1767977273133) (:by |sync)
                :data $ {}
                  |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |states)
                  |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |options)
              |Z $ %{} :Expr (:at 1767977273133) (:by |sync)
                :data $ {}
                  |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |let)
                  |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                    :data $ {}
                      |T $ %{} :Expr (:at 1767977273133) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |cursor)
                          |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:cursor)
                              |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |states)
                      |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |state)
                          |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |either)
                              |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:data)
                                  |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |states)
                              |X $ %{} :Expr (:at 1767977273133) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |{})
                                  |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:show?)
                                      |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |false)
                                  |X $ %{} :Expr (:at 1767977273133) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:text)
                                      |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |nil)
                      |X $ %{} :Expr (:at 1767977273133) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |*next-confirm-task)
                          |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |anchor-state)
                              |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |identity-path)
                                  |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |'confirm)
                      |Z $ %{} :Expr (:at 1767977273133) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |node)
                          |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |comp-confirm-modal)
                              |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |if)
                                  |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |blank?)
                                      |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:text)
                                          |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |state)
                                  |X $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |options)
                                  |Z $ %{} :Expr (:at 1767977273133) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |assoc)
                                      |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |options)
                                      |X $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:text)
                                      |Z $ %{} :Expr (:at 1767977273133) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:text)
                                          |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |state)
                              |X $ %{} :Expr (:at 1767977273133) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:show?)
                                  |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |state)
                              |Z $ %{} :Expr (:at 1767977273133) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |fn)
                                  |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |e)
                                      |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |d!)
                                  |X $ %{} :Expr (:at 1767977273133) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |if)
                                      |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |some?)
                                          |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |@*next-confirm-task)
                                      |X $ %{} :Expr (:at 1767977273133) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |@*next-confirm-task)
                                  |Z $ %{} :Expr (:at 1767977273133) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |.set!)
                                      |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |*next-confirm-task)
                                      |X $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |nil)
                              |b $ %{} :Expr (:at 1767977273133) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |fn)
                                  |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |d!)
                                  |X $ %{} :Expr (:at 1767977273133) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |d!)
                                      |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |cursor)
                                      |X $ %{} :Expr (:at 1767977273133) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |assoc)
                                          |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |state)
                                          |X $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:show?)
                                          |Z $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |false)
                                  |Z $ %{} :Expr (:at 1767977273133) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |.set!)
                                      |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |*next-confirm-task)
                                      |X $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |nil)
                  |X $ %{} :Expr (:at 1767977273133) (:by |sync)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |%::)
                      |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |%confirm-actions)
                      |X $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:plugin)
                      |Z $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |node)
                      |b $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |cursor)
                      |d $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |state)
                      |f $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |*next-confirm-task)
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
        |use-drawer $ %{} :CodeEntry (:doc "||Drawer hook. Shows a panel sliding from the side. Use :render function in options to customize content. Supports :style for width and other styles.")
          :code $ %{} :Expr (:at 1767977273133) (:by |sync)
            :data $ {}
              |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |defn)
              |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |use-drawer)
              |X $ %{} :Expr (:at 1767977273133) (:by |sync)
                :data $ {}
                  |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |states)
                  |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |options)
              |Z $ %{} :Expr (:at 1767977273133) (:by |sync)
                :data $ {}
                  |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |let)
                  |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                    :data $ {}
                      |T $ %{} :Expr (:at 1767977273133) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |cursor)
                          |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:cursor)
                              |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |states)
                      |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |state)
                          |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |either)
                              |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:data)
                                  |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |states)
                              |X $ %{} :Expr (:at 1767977273133) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |{})
                                  |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:show?)
                                      |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |false)
                      |X $ %{} :Expr (:at 1767977273133) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |node)
                          |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |comp-drawer)
                              |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |options)
                              |X $ %{} :Expr (:at 1767977273133) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:show?)
                                  |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |state)
                              |Z $ %{} :Expr (:at 1767977273133) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |fn)
                                  |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |d!)
                                  |X $ %{} :Expr (:at 1767977273133) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |d!)
                                      |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |cursor)
                                      |X $ %{} :Expr (:at 1767977273133) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |assoc)
                                          |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |state)
                                          |X $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:show?)
                                          |Z $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |false)
                  |X $ %{} :Expr (:at 1767977273133) (:by |sync)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |%::)
                      |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |%drawer-actions)
                      |X $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:plugin)
                      |Z $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |node)
                      |b $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |cursor)
                      |d $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |state)
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
        |use-modal $ %{} :CodeEntry (:doc "||Modal dialog hook. Shows a modal with custom content. Use :render function in options to customize content. Returns a plugin object.")
          :code $ %{} :Expr (:at 1767977273133) (:by |sync)
            :data $ {}
              |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |defn)
              |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |use-modal)
              |X $ %{} :Expr (:at 1767977273133) (:by |sync)
                :data $ {}
                  |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |states)
                  |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |options)
              |Z $ %{} :Expr (:at 1767977273133) (:by |sync)
                :data $ {}
                  |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |let)
                  |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                    :data $ {}
                      |T $ %{} :Expr (:at 1767977273133) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |cursor)
                          |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:cursor)
                              |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |states)
                      |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |state)
                          |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |either)
                              |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:data)
                                  |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |states)
                              |X $ %{} :Expr (:at 1767977273133) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |{})
                                  |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:show?)
                                      |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |false)
                      |X $ %{} :Expr (:at 1767977273133) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |node)
                          |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |comp-modal)
                              |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |options)
                              |X $ %{} :Expr (:at 1767977273133) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:show?)
                                  |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |state)
                              |Z $ %{} :Expr (:at 1767977273133) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |fn)
                                  |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |d!)
                                  |X $ %{} :Expr (:at 1767977273133) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |d!)
                                      |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |cursor)
                                      |X $ %{} :Expr (:at 1767977273133) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |assoc)
                                          |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |state)
                                          |X $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:show?)
                                          |Z $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |false)
                  |X $ %{} :Expr (:at 1767977273133) (:by |sync)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |%::)
                      |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |%modal-actions)
                      |X $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:plugin)
                      |Z $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |node)
                      |b $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |cursor)
                      |d $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |state)
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
        |use-modal-menu $ %{} :CodeEntry (:doc "||Modal menu hook. Shows a modal dialog with a list of options. Define options via :items and handle selection via :on-result in options.")
          :code $ %{} :Expr (:at 1767977273133) (:by |sync)
            :data $ {}
              |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |defn)
              |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |use-modal-menu)
              |X $ %{} :Expr (:at 1767977273133) (:by |sync)
                :data $ {}
                  |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |states)
                  |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |options)
              |Z $ %{} :Expr (:at 1767977273133) (:by |sync)
                :data $ {}
                  |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |let)
                  |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                    :data $ {}
                      |T $ %{} :Expr (:at 1767977273133) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |cursor)
                          |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:cursor)
                              |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |states)
                      |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |state)
                          |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |either)
                              |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:data)
                                  |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |states)
                              |X $ %{} :Expr (:at 1767977273133) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |{})
                                  |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:show?)
                                      |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |false)
                      |X $ %{} :Expr (:at 1767977273133) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |node)
                          |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |comp-modal-menu)
                              |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |options)
                              |X $ %{} :Expr (:at 1767977273133) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:show?)
                                  |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |state)
                              |Z $ %{} :Expr (:at 1767977273133) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |fn)
                                  |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |d!)
                                  |X $ %{} :Expr (:at 1767977273133) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |d!)
                                      |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |cursor)
                                      |X $ %{} :Expr (:at 1767977273133) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |assoc)
                                          |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |state)
                                          |X $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:show?)
                                          |Z $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |false)
                              |b $ %{} :Expr (:at 1767977273133) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |fn)
                                  |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |result)
                                      |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |d!)
                                  |X $ %{} :Expr (:at 1767977273133) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Expr (:at 1767977273133) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:on-result)
                                          |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |options)
                                      |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |result)
                                      |X $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |d!)
                                  |Z $ %{} :Expr (:at 1767977273133) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |d!)
                                      |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |cursor)
                                      |X $ %{} :Expr (:at 1767977273133) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |assoc)
                                          |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |state)
                                          |X $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:show?)
                                          |Z $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |false)
                  |X $ %{} :Expr (:at 1767977273133) (:by |sync)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |%::)
                      |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |%modal-menu-actions)
                      |X $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:plugin)
                      |Z $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |node)
                      |b $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |cursor)
                      |d $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |state)
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
        |use-prompt $ %{} :CodeEntry (:doc "||Prompt dialog hook. Shows a dialog with text input. Returns a plugin object, call .show with a callback function to receive user input text.")
          :code $ %{} :Expr (:at 1767977273133) (:by |sync)
            :data $ {}
              |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |defplugin)
              |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |use-prompt)
              |X $ %{} :Expr (:at 1767977273133) (:by |sync)
                :data $ {}
                  |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |states)
                  |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |options)
              |Z $ %{} :Expr (:at 1767977273133) (:by |sync)
                :data $ {}
                  |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |let)
                  |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                    :data $ {}
                      |T $ %{} :Expr (:at 1767977273133) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |cursor)
                          |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:cursor)
                              |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |states)
                      |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |state)
                          |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |either)
                              |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:data)
                                  |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |states)
                              |X $ %{} :Expr (:at 1767977273133) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |{})
                                  |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:show?)
                                      |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |false)
                                  |X $ %{} :Expr (:at 1767977273133) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:failure)
                                      |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |nil)
                      |X $ %{} :Expr (:at 1767977273133) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |*next-prompt-task)
                          |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |anchor-state)
                              |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |identity-path)
                                  |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |'prompt)
                      |Z $ %{} :Expr (:at 1767977273133) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |node)
                          |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |comp-prompt-modal)
                              |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |>>)
                                  |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |states)
                                  |X $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:modal)
                              |X $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |options)
                              |Z $ %{} :Expr (:at 1767977273133) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:show?)
                                  |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |state)
                              |b $ %{} :Expr (:at 1767977273133) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |fn)
                                  |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |text)
                                      |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |d!)
                                  |X $ %{} :Expr (:at 1767977273133) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |if)
                                      |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |some?)
                                          |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |@*next-prompt-task)
                                      |X $ %{} :Expr (:at 1767977273133) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |@*next-prompt-task)
                                          |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |text)
                                  |Z $ %{} :Expr (:at 1767977273133) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |.set!)
                                      |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |*next-prompt-task)
                                      |X $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |nil)
                                  |b $ %{} :Expr (:at 1767977273133) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |d!)
                                      |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |cursor)
                                      |X $ %{} :Expr (:at 1767977273133) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |assoc)
                                          |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |state)
                                          |X $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:show?)
                                          |Z $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |false)
                              |d $ %{} :Expr (:at 1767977273133) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |fn)
                                  |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |d!)
                                  |X $ %{} :Expr (:at 1767977273133) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |d!)
                                      |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |cursor)
                                      |X $ %{} :Expr (:at 1767977273133) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |assoc)
                                          |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |state)
                                          |X $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:show?)
                                          |Z $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |false)
                                  |Z $ %{} :Expr (:at 1767977273133) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |.set!)
                                      |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |*next-prompt-task)
                                      |X $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |nil)
                  |X $ %{} :Expr (:at 1767977273133) (:by |sync)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |%::)
                      |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |%prompt-actions)
                      |X $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:plugin)
                      |Z $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |node)
                      |b $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |cursor)
                      |d $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |state)
                      |f $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |*next-prompt-task)
          :examples $ []
            quote $ let
                prompt-plugin $ use-prompt (>> states :prompt)
                  {} (:text "|请输入名称") (:placeholder |name)
              button
                {} $ :on-click
                  fn (e d!)
                    .show prompt-plugin d! $ fn (text) (println |got: text)
                <> |Input
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1767546522349) (:by |sync)
          :data $ {}
            |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |ns)
            |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |respo-alerts.core)
            |X $ %{} :Expr (:at 1767546522349) (:by |sync)
              :data $ {}
                |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |:require)
                |V $ %{} :Expr (:at 1767546522349) (:by |sync)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |respo.util.format)
                    |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |:refer)
                    |X $ %{} :Expr (:at 1767546522349) (:by |sync)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |hsl)
                |X $ %{} :Expr (:at 1767546522349) (:by |sync)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |respo.schema)
                    |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |:as)
                    |X $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |respo-schema)
                |Z $ %{} :Expr (:at 1767546522349) (:by |sync)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |respo-ui.core)
                    |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |:as)
                    |X $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |ui)
                |b $ %{} :Expr (:at 1767546522349) (:by |sync)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |respo-ui.css)
                    |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |:as)
                    |X $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |css)
                |d $ %{} :Expr (:at 1767546522349) (:by |sync)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |respo.core)
                    |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |:refer)
                    |X $ %{} :Expr (:at 1767546522349) (:by |sync)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |defcomp)
                        |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |defplugin)
                        |X $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |list->)
                        |Z $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |<>)
                        |b $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |>>)
                        |d $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |div)
                        |f $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |button)
                        |h $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |textarea)
                        |j $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |span)
                        |l $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |input)
                        |n $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |a)
                        |p $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |defeffect)
                |f $ %{} :Expr (:at 1767546522349) (:by |sync)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |respo.css)
                    |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |:refer)
                    |X $ %{} :Expr (:at 1767546522349) (:by |sync)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |defstyle)
                |h $ %{} :Expr (:at 1767546522349) (:by |sync)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |respo.comp.space)
                    |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |:refer)
                    |X $ %{} :Expr (:at 1767546522349) (:by |sync)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |=<)
                |j $ %{} :Expr (:at 1767546522349) (:by |sync)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |respo-alerts.config)
                    |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |:refer)
                    |X $ %{} :Expr (:at 1767546522349) (:by |sync)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |dev?)
                |l $ %{} :Expr (:at 1767546522349) (:by |sync)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |respo-alerts.style)
                    |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |:as)
                    |X $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |style)
                |n $ %{} :Expr (:at 1767546522349) (:by |sync)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |respo-alerts.schema)
                    |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |:as)
                    |X $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |schema)
                |p $ %{} :Expr (:at 1767546522349) (:by |sync)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |respo-alerts.util)
                    |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |:refer)
                    |X $ %{} :Expr (:at 1767546522349) (:by |sync)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |focus-element!)
                        |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |select-element!)
                |r $ %{} :Expr (:at 1767546522349) (:by |sync)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |respo-alerts.style)
                    |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |:as)
                    |X $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |style)
                |t $ %{} :Expr (:at 1767546522349) (:by |sync)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |memof.anchor)
                    |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |:refer)
                    |X $ %{} :Expr (:at 1767546522349) (:by |sync)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |anchor-state)
                        |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |identity-path)
        :examples $ []
    |respo-alerts.main $ %{} :FileEntry
      :defs $ {}
        |*reel $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1767546522349) (:by |sync)
            :data $ {}
              |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |defatom)
              |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |*reel)
              |X $ %{} :Expr (:at 1767546522349) (:by |sync)
                :data $ {}
                  |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |->)
                  |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |reel-schema/reel)
                  |X $ %{} :Expr (:at 1767546522349) (:by |sync)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |assoc)
                      |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |:base)
                      |X $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |schema/store)
                  |Z $ %{} :Expr (:at 1767546522349) (:by |sync)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |assoc)
                      |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |:store)
                      |X $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |schema/store)
          :examples $ []
        |dispatch! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1767546522349) (:by |sync)
            :data $ {}
              |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |defn)
              |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |dispatch!)
              |X $ %{} :Expr (:at 1767546522349) (:by |sync)
                :data $ {}
                  |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |op)
              |Z $ %{} :Expr (:at 1767546522349) (:by |sync)
                :data $ {}
                  |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |do)
                  |V $ %{} :Expr (:at 1767546522349) (:by |sync)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |when)
                      |V $ %{} :Expr (:at 1767546522349) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |and)
                          |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |config/dev?)
                          |X $ %{} :Expr (:at 1767546522349) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |not=)
                              |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |:states)
                              |X $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |op)
                      |X $ %{} :Expr (:at 1767546522349) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |js/console.log)
                          |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text "|\"Dispatch:")
                          |X $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |op)
                  |X $ %{} :Expr (:at 1767546522349) (:by |sync)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |reset!)
                      |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |*reel)
                      |X $ %{} :Expr (:at 1767546522349) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |reel-updater)
                          |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |updater)
                          |X $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |@*reel)
                          |Z $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |op)
          :examples $ []
        |main! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1767546522349) (:by |sync)
            :data $ {}
              |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |defn)
              |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |main!)
              |X $ %{} :Expr (:at 1767546522349) (:by |sync)
                :data $ {}
              |Z $ %{} :Expr (:at 1767546522349) (:by |sync)
                :data $ {}
                  |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |println)
                  |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text "|\"Running mode:")
                  |X $ %{} :Expr (:at 1767546522349) (:by |sync)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |if)
                      |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |config/dev?)
                      |X $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text "|\"dev")
                      |Z $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text "|\"release")
              |b $ %{} :Expr (:at 1767546522349) (:by |sync)
                :data $ {}
                  |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |if)
                  |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |config/dev?)
                  |X $ %{} :Expr (:at 1767546522349) (:by |sync)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |load-console-formatter!)
              |d $ %{} :Expr (:at 1767546522349) (:by |sync)
                :data $ {}
                  |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |render-app!)
              |f $ %{} :Expr (:at 1767546522349) (:by |sync)
                :data $ {}
                  |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |add-watch)
                  |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |*reel)
                  |X $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |:changes)
                  |Z $ %{} :Expr (:at 1767546522349) (:by |sync)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |fn)
                      |V $ %{} :Expr (:at 1767546522349) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |reel)
                          |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |prev)
                      |X $ %{} :Expr (:at 1767546522349) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |render-app!)
              |h $ %{} :Expr (:at 1767546522349) (:by |sync)
                :data $ {}
                  |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |listen-devtools!)
                  |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text ||a)
                  |X $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |dispatch!)
              |j $ %{} :Expr (:at 1767546522349) (:by |sync)
                :data $ {}
                  |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |;)
                  |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |js/window.addEventListener)
                  |X $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text ||beforeunload)
                  |Z $ %{} :Expr (:at 1767546522349) (:by |sync)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |fn)
                      |V $ %{} :Expr (:at 1767546522349) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |event)
                      |X $ %{} :Expr (:at 1767546522349) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |persist-storage!)
              |l $ %{} :Expr (:at 1767546522349) (:by |sync)
                :data $ {}
                  |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |;)
                  |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |js/setInterval)
                  |X $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |persist-storage!)
                  |Z $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |60000)
              |n $ %{} :Expr (:at 1767546522349) (:by |sync)
                :data $ {}
                  |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |;)
                  |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |let)
                  |X $ %{} :Expr (:at 1767546522349) (:by |sync)
                    :data $ {}
                      |T $ %{} :Expr (:at 1767546522349) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |raw)
                          |V $ %{} :Expr (:at 1767546522349) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |js/localStorage.getItem)
                              |V $ %{} :Expr (:at 1767546522349) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |:storage-key)
                                  |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |config/site)
                  |Z $ %{} :Expr (:at 1767546522349) (:by |sync)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |when)
                      |V $ %{} :Expr (:at 1767546522349) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |some?)
                          |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |raw)
                      |X $ %{} :Expr (:at 1767546522349) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |dispatch!)
                          |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |:hydrate-storage)
                          |X $ %{} :Expr (:at 1767546522349) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |parse-cirru-edn)
                              |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |raw)
              |p $ %{} :Expr (:at 1767546522349) (:by |sync)
                :data $ {}
                  |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |println)
                  |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text "||App started.")
          :examples $ []
        |mount-target $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1767546522349) (:by |sync)
            :data $ {}
              |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |def)
              |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |mount-target)
              |X $ %{} :Expr (:at 1767546522349) (:by |sync)
                :data $ {}
                  |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |js/document.querySelector)
                  |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text ||.app)
          :examples $ []
        |persist-storage! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1767546522349) (:by |sync)
            :data $ {}
              |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |defn)
              |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |persist-storage!)
              |X $ %{} :Expr (:at 1767546522349) (:by |sync)
                :data $ {}
                  |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |?)
                  |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |e)
              |Z $ %{} :Expr (:at 1767546522349) (:by |sync)
                :data $ {}
                  |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |js/localStorage.setItem)
                  |V $ %{} :Expr (:at 1767546522349) (:by |sync)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |:storage-key)
                      |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |config/site)
                  |X $ %{} :Expr (:at 1767546522349) (:by |sync)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |format-cirru-edn)
                      |V $ %{} :Expr (:at 1767546522349) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |:store)
                          |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |@*reel)
          :examples $ []
        |reload! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1767546522349) (:by |sync)
            :data $ {}
              |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |defn)
              |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |reload!)
              |X $ %{} :Expr (:at 1767546522349) (:by |sync)
                :data $ {}
              |Z $ %{} :Expr (:at 1767546522349) (:by |sync)
                :data $ {}
                  |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |if)
                  |V $ %{} :Expr (:at 1767546522349) (:by |sync)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |nil?)
                      |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |build-errors)
                  |X $ %{} :Expr (:at 1767546522349) (:by |sync)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |do)
                      |V $ %{} :Expr (:at 1767546522349) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |remove-watch)
                          |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |*reel)
                          |X $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |:changes)
                      |X $ %{} :Expr (:at 1767546522349) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |clear-cache!)
                      |Z $ %{} :Expr (:at 1767546522349) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |add-watch)
                          |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |*reel)
                          |X $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |:changes)
                          |Z $ %{} :Expr (:at 1767546522349) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |fn)
                              |V $ %{} :Expr (:at 1767546522349) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |reel)
                                  |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |prev)
                              |X $ %{} :Expr (:at 1767546522349) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |render-app!)
                      |b $ %{} :Expr (:at 1767546522349) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |reset!)
                          |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |*reel)
                          |X $ %{} :Expr (:at 1767546522349) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |refresh-reel)
                              |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |@*reel)
                              |X $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |schema/store)
                              |Z $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |updater)
                      |d $ %{} :Expr (:at 1767546522349) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |hud!)
                          |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text "|\"ok~")
                          |X $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text "|\"Ok")
                  |Z $ %{} :Expr (:at 1767546522349) (:by |sync)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |hud!)
                      |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text "|\"error")
                      |X $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |build-errors)
          :examples $ []
        |render-app! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1767546522349) (:by |sync)
            :data $ {}
              |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |defn)
              |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |render-app!)
              |X $ %{} :Expr (:at 1767546522349) (:by |sync)
                :data $ {}
              |Z $ %{} :Expr (:at 1767546522349) (:by |sync)
                :data $ {}
                  |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |render!)
                  |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |mount-target)
                  |X $ %{} :Expr (:at 1767546522349) (:by |sync)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |comp-container)
                      |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |@*reel)
                  |Z $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |dispatch!)
          :examples $ []
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1767546522349) (:by |sync)
          :data $ {}
            |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |ns)
            |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |respo-alerts.main)
            |X $ %{} :Expr (:at 1767546522349) (:by |sync)
              :data $ {}
                |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |:require)
                |V $ %{} :Expr (:at 1767546522349) (:by |sync)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |respo.core)
                    |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |:refer)
                    |X $ %{} :Expr (:at 1767546522349) (:by |sync)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |render!)
                        |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |clear-cache!)
                        |X $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |realize-ssr!)
                |X $ %{} :Expr (:at 1767546522349) (:by |sync)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |respo-alerts.comp.container)
                    |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |:refer)
                    |X $ %{} :Expr (:at 1767546522349) (:by |sync)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |comp-container)
                |Z $ %{} :Expr (:at 1767546522349) (:by |sync)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |respo-alerts.updater)
                    |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |:refer)
                    |X $ %{} :Expr (:at 1767546522349) (:by |sync)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |updater)
                |b $ %{} :Expr (:at 1767546522349) (:by |sync)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |respo-alerts.schema)
                    |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |:as)
                    |X $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |schema)
                |d $ %{} :Expr (:at 1767546522349) (:by |sync)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |reel.util)
                    |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |:refer)
                    |X $ %{} :Expr (:at 1767546522349) (:by |sync)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |listen-devtools!)
                |f $ %{} :Expr (:at 1767546522349) (:by |sync)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |reel.core)
                    |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |:refer)
                    |X $ %{} :Expr (:at 1767546522349) (:by |sync)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |reel-updater)
                        |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |refresh-reel)
                |h $ %{} :Expr (:at 1767546522349) (:by |sync)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |reel.schema)
                    |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |:as)
                    |X $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |reel-schema)
                |j $ %{} :Expr (:at 1767546522349) (:by |sync)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |respo-alerts.config)
                    |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |:as)
                    |X $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |config)
                |l $ %{} :Expr (:at 1767546522349) (:by |sync)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text "|\"./calcit.build-errors")
                    |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |:default)
                    |X $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |build-errors)
                |n $ %{} :Expr (:at 1767546522349) (:by |sync)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text "|\"bottom-tip")
                    |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |:default)
                    |X $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |hud!)
        :examples $ []
    |respo-alerts.schema $ %{} :FileEntry
      :defs $ {}
        |confirm-button-name $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1767546522349) (:by |sync)
            :data $ {}
              |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |def)
              |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |confirm-button-name)
              |X $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text "|\"respo-confirm-button")
          :examples $ []
        |input-box-name $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1767546522349) (:by |sync)
            :data $ {}
              |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |def)
              |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |input-box-name)
              |X $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text "|\"respo-prompt-input")
          :examples $ []
        |store $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1767546522349) (:by |sync)
            :data $ {}
              |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |def)
              |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |store)
              |X $ %{} :Expr (:at 1767546522349) (:by |sync)
                :data $ {}
                  |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |{})
                  |V $ %{} :Expr (:at 1767546522349) (:by |sync)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |:states)
                      |V $ %{} :Expr (:at 1767546522349) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |{})
                  |X $ %{} :Expr (:at 1767546522349) (:by |sync)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |:content)
                      |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text ||)
          :examples $ []
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1767546522349) (:by |sync)
          :data $ {}
            |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |ns)
            |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |respo-alerts.schema)
        :examples $ []
    |respo-alerts.style $ %{} :FileEntry
      :defs $ {}
        |backdrop $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1767546522350) (:by |sync)
            :data $ {}
              |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |def)
              |V $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |backdrop)
              |X $ %{} :Expr (:at 1767546522350) (:by |sync)
                :data $ {}
                  |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |{})
                  |V $ %{} :Expr (:at 1767546522350) (:by |sync)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |:background-color)
                      |V $ %{} :Expr (:at 1767546522350) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |hsl)
                          |V $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |0)
                          |X $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |30)
                          |Z $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |10)
                          |b $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |0.6)
                  |X $ %{} :Expr (:at 1767546522350) (:by |sync)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |:position)
                      |V $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |:fixed)
                  |Z $ %{} :Expr (:at 1767546522350) (:by |sync)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |:z-index)
                      |V $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text ||999)
                  |b $ %{} :Expr (:at 1767546522350) (:by |sync)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |:padding)
                      |V $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |16)
          :examples $ []
        |button $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1767546522350) (:by |sync)
            :data $ {}
              |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |def)
              |V $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |button)
              |X $ %{} :Expr (:at 1767546522350) (:by |sync)
                :data $ {}
                  |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |merge)
                  |V $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |ui/button)
                  |X $ %{} :Expr (:at 1767546522350) (:by |sync)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |{})
                      |V $ %{} :Expr (:at 1767546522350) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |:border-radius)
                          |V $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text "|\"4px")
                      |X $ %{} :Expr (:at 1767546522350) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |:background-color)
                          |V $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |:white)
                      |Z $ %{} :Expr (:at 1767546522350) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |:border-color)
                          |V $ %{} :Expr (:at 1767546522350) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |hsl)
                              |V $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |240)
                              |X $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |60)
                              |Z $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |90)
          :examples $ []
        |card $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1767546522350) (:by |sync)
            :data $ {}
              |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |def)
              |V $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |card)
              |X $ %{} :Expr (:at 1767546522350) (:by |sync)
                :data $ {}
                  |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |{})
                  |V $ %{} :Expr (:at 1767546522350) (:by |sync)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |:background-color)
                      |V $ %{} :Expr (:at 1767546522350) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |hsl)
                          |V $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |0)
                          |X $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |0)
                          |Z $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |100)
                  |X $ %{} :Expr (:at 1767546522350) (:by |sync)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |:max-width)
                      |V $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text "|\"600px")
                  |Z $ %{} :Expr (:at 1767546522350) (:by |sync)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |:width)
                      |V $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text "|\"100%")
                  |b $ %{} :Expr (:at 1767546522350) (:by |sync)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |:max-height)
                      |V $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text "|\"80vh")
                  |d $ %{} :Expr (:at 1767546522350) (:by |sync)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |:overflow)
                      |V $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |:auto)
                  |f $ %{} :Expr (:at 1767546522350) (:by |sync)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |:border-radius)
                      |V $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text "|\"3px")
                  |h $ %{} :Expr (:at 1767546522350) (:by |sync)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |:color)
                      |V $ %{} :Expr (:at 1767546522350) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |hsl)
                          |V $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |0)
                          |X $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |0)
                          |Z $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |0)
                  |j $ %{} :Expr (:at 1767546522350) (:by |sync)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |:margin)
                      |V $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |:auto)
                  |l $ %{} :Expr (:at 1767546522350) (:by |sync)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |:padding)
                      |V $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |16)
          :examples $ []
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1767546522350) (:by |sync)
          :data $ {}
            |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |ns)
            |V $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |respo-alerts.style)
            |X $ %{} :Expr (:at 1767546522350) (:by |sync)
              :data $ {}
                |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |:require)
                |V $ %{} :Expr (:at 1767546522350) (:by |sync)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |respo.util.format)
                    |V $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |:refer)
                    |X $ %{} :Expr (:at 1767546522350) (:by |sync)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |hsl)
                |X $ %{} :Expr (:at 1767546522350) (:by |sync)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |respo-ui.core)
                    |V $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |:as)
                    |X $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |ui)
        :examples $ []
    |respo-alerts.trigger $ %{} :FileEntry
      :defs $ {}
        |comp-trigger $ %{} :CodeEntry (:doc "||Trigger component. Wraps an element with visual feedback when active. Uses :trigger-style and :trigger-active-style from options.")
          :code $ %{} :Expr (:at 1767977273133) (:by |sync)
            :data $ {}
              |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |defcomp)
              |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |comp-trigger)
              |X $ %{} :Expr (:at 1767977273133) (:by |sync)
                :data $ {}
                  |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |show?)
                  |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |el)
                  |X $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |?)
                  |Z $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |options)
              |Z $ %{} :Expr (:at 1767977273133) (:by |sync)
                :data $ {}
                  |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |div)
                  |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |{})
                      |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:class-name)
                          |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |style-trigger-container)
                  |X $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |el)
                  |Z $ %{} :Expr (:at 1767977273133) (:by |sync)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |div)
                      |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |{})
                          |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:class-name)
                              |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |str-spaced)
                                  |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |style-trigger)
                                  |X $ %{} :Expr (:at 1767977273133) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |if)
                                      |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |show?)
                                      |X $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |style-trigger-active)
                          |X $ %{} :Expr (:at 1767977273133) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:style)
                              |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |merge)
                                  |V $ %{} :Expr (:at 1767977273133) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |get)
                                      |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |options)
                                      |X $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:trigger-style)
                                  |X $ %{} :Expr (:at 1767977273133) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |if)
                                      |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |show?)
                                      |X $ %{} :Expr (:at 1767977273133) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |get)
                                          |V $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |options)
                                          |X $ %{} :Leaf (:at 1767977273133) (:by |sync) (:text |:trigger-active-style)
          :examples $ []
            quote $ comp-trigger show?
              button
                {} $ :on-click on-click
                <> "|Click me"
              {}
                :trigger-style $ {} (:color |blue)
                :trigger-active-style $ {} (:color |red)
        |style-trigger $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1767546522349) (:by |sync)
            :data $ {}
              |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |defstyle)
              |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |style-trigger)
              |X $ %{} :Expr (:at 1767546522349) (:by |sync)
                :data $ {}
                  |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |{})
                  |V $ %{} :Expr (:at 1767546522349) (:by |sync)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text "|\"&")
                      |V $ %{} :Expr (:at 1767546522349) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |{})
                          |V $ %{} :Expr (:at 1767546522349) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |:border-radius)
                              |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text "|\"50%")
                          |X $ %{} :Expr (:at 1767546522349) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |:position)
                              |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |:absolute)
                          |Z $ %{} :Expr (:at 1767546522349) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |:transform)
                              |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text "|\"translate(-50%,-50%)")
                          |b $ %{} :Expr (:at 1767546522349) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |:top)
                              |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text "|\"50%")
                          |d $ %{} :Expr (:at 1767546522349) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |:left)
                              |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text "|\"50%")
                          |f $ %{} :Expr (:at 1767546522349) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |:width)
                              |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |0)
                          |h $ %{} :Expr (:at 1767546522349) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |:height)
                              |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |0)
                          |j $ %{} :Expr (:at 1767546522349) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |:transition-duration)
                              |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text "|\"300ms")
                          |l $ %{} :Expr (:at 1767546522349) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |:transition-delay)
                              |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text "|\"100ms")
                          |n $ %{} :Expr (:at 1767546522349) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |:pointer-events)
                              |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |:none)
                          |p $ %{} :Expr (:at 1767546522349) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |:z-index)
                              |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text ||900)
                          |r $ %{} :Expr (:at 1767546522349) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |:opacity)
                              |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |1)
                          |t $ %{} :Expr (:at 1767546522349) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |:background)
                              |V $ %{} :Expr (:at 1767546522349) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |str)
                                  |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text "|\"radial-gradient(")
                                  |X $ %{} :Expr (:at 1767546522349) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |hsl)
                                      |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |0)
                                      |X $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |0)
                                      |Z $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |70)
                                      |b $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |0.8)
                                  |Z $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text "|\"0% ,")
                                  |b $ %{} :Expr (:at 1767546522349) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |hsl)
                                      |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |0)
                                      |X $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |0)
                                      |Z $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |60)
                                      |b $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |0.0)
                                  |d $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text "|\" 50%)")
          :examples $ []
        |style-trigger-active $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1702667879923) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1702667880918) (:by |rJG4IHzWf) (:text |defstyle)
              |b $ %{} :Leaf (:at 1702667879923) (:by |rJG4IHzWf) (:text |style-trigger-active)
              |h $ %{} :Expr (:at 1702667881741) (:by |rJG4IHzWf)
                :data $ {}
                  |D $ %{} :Leaf (:at 1702667882617) (:by |rJG4IHzWf) (:text |{})
                  |T $ %{} :Expr (:at 1702667883063) (:by |rJG4IHzWf)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1702667884267) (:by |rJG4IHzWf) (:text "|\"&")
                      |T $ %{} :Expr (:at 1702667881517) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1702667881517) (:by |rJG4IHzWf) (:text |{})
                          |b $ %{} :Expr (:at 1702667881517) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1702667881517) (:by |rJG4IHzWf) (:text |:width)
                              |b $ %{} :Leaf (:at 1702668007473) (:by |rJG4IHzWf) (:text |2000)
                          |h $ %{} :Expr (:at 1702667881517) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1702667881517) (:by |rJG4IHzWf) (:text |:height)
                              |b $ %{} :Leaf (:at 1702668010034) (:by |rJG4IHzWf) (:text |2000)
                          |l $ %{} :Expr (:at 1702667881517) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1702667881517) (:by |rJG4IHzWf) (:text |:opacity)
                              |b $ %{} :Leaf (:at 1702668118095) (:by |rJG4IHzWf) (:text |0.3)
                          |o $ %{} :Expr (:at 1702667881517) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1702667881517) (:by |rJG4IHzWf) (:text |:transition-delay)
                              |b $ %{} :Leaf (:at 1702667881517) (:by |rJG4IHzWf) (:text "|\"0ms")
          :examples $ []
        |style-trigger-container $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1702667843254) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1702667846714) (:by |rJG4IHzWf) (:text |defstyle)
              |b $ %{} :Leaf (:at 1702667843254) (:by |rJG4IHzWf) (:text |style-trigger-container)
              |h $ %{} :Expr (:at 1702667847751) (:by |rJG4IHzWf)
                :data $ {}
                  |D $ %{} :Leaf (:at 1702667848216) (:by |rJG4IHzWf) (:text |{})
                  |T $ %{} :Expr (:at 1702667848625) (:by |rJG4IHzWf)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1702667849882) (:by |rJG4IHzWf) (:text "|\"&")
                      |T $ %{} :Expr (:at 1702667847435) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1702667847435) (:by |rJG4IHzWf) (:text |{})
                          |b $ %{} :Expr (:at 1702667847435) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1702667847435) (:by |rJG4IHzWf) (:text |:display)
                              |b $ %{} :Leaf (:at 1702667847435) (:by |rJG4IHzWf) (:text |:inline-block)
                          |h $ %{} :Expr (:at 1702667847435) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1702667847435) (:by |rJG4IHzWf) (:text |:position)
                              |b $ %{} :Leaf (:at 1702667847435) (:by |rJG4IHzWf) (:text |:relative)
          :examples $ []
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1702666172847) (:by |rJG4IHzWf)
          :data $ {}
            |T $ %{} :Leaf (:at 1702666172847) (:by |rJG4IHzWf) (:text |ns)
            |b $ %{} :Leaf (:at 1702666172847) (:by |rJG4IHzWf) (:text |respo-alerts.trigger)
            |h $ %{} :Expr (:at 1702666303114) (:by |rJG4IHzWf)
              :data $ {}
                |T $ %{} :Leaf (:at 1702666303887) (:by |rJG4IHzWf) (:text |:require)
                |b $ %{} :Expr (:at 1702666304269) (:by |rJG4IHzWf)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1702666304269) (:by |rJG4IHzWf) (:text |respo.core)
                    |b $ %{} :Leaf (:at 1702666304269) (:by |rJG4IHzWf) (:text |:refer)
                    |h $ %{} :Expr (:at 1702666304269) (:by |rJG4IHzWf)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1702666304269) (:by |rJG4IHzWf) (:text |defcomp)
                        |b $ %{} :Leaf (:at 1702666304269) (:by |rJG4IHzWf) (:text |defplugin)
                        |h $ %{} :Leaf (:at 1702666304269) (:by |rJG4IHzWf) (:text |list->)
                        |l $ %{} :Leaf (:at 1702666304269) (:by |rJG4IHzWf) (:text |<>)
                        |o $ %{} :Leaf (:at 1702666304269) (:by |rJG4IHzWf) (:text |>>)
                        |q $ %{} :Leaf (:at 1702666304269) (:by |rJG4IHzWf) (:text |div)
                        |s $ %{} :Leaf (:at 1702666304269) (:by |rJG4IHzWf) (:text |button)
                        |t $ %{} :Leaf (:at 1702666304269) (:by |rJG4IHzWf) (:text |textarea)
                        |u $ %{} :Leaf (:at 1702666304269) (:by |rJG4IHzWf) (:text |span)
                        |v $ %{} :Leaf (:at 1702666304269) (:by |rJG4IHzWf) (:text |input)
                        |w $ %{} :Leaf (:at 1702666304269) (:by |rJG4IHzWf) (:text |a)
                        |x $ %{} :Leaf (:at 1702666304269) (:by |rJG4IHzWf) (:text |defeffect)
                |h $ %{} :Expr (:at 1702666308336) (:by |rJG4IHzWf)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1702666308336) (:by |rJG4IHzWf) (:text |respo-ui.css)
                    |b $ %{} :Leaf (:at 1702666308336) (:by |rJG4IHzWf) (:text |:as)
                    |h $ %{} :Leaf (:at 1702666308336) (:by |rJG4IHzWf) (:text |css)
                |l $ %{} :Expr (:at 1702666717570) (:by |rJG4IHzWf)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1702666722730) (:by |rJG4IHzWf) (:text |respo.util.format)
                    |b $ %{} :Leaf (:at 1702666723512) (:by |rJG4IHzWf) (:text |:refer)
                    |h $ %{} :Expr (:at 1702666723765) (:by |rJG4IHzWf)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1702666725075) (:by |rJG4IHzWf) (:text |hsl)
                |o $ %{} :Expr (:at 1702667891232) (:by |rJG4IHzWf)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1702667894049) (:by |rJG4IHzWf) (:text |respo.css)
                    |b $ %{} :Leaf (:at 1702667894755) (:by |rJG4IHzWf) (:text |:refer)
                    |h $ %{} :Expr (:at 1702667894969) (:by |rJG4IHzWf)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1702667895946) (:by |rJG4IHzWf) (:text |defstyle)
        :examples $ []
    |respo-alerts.updater $ %{} :FileEntry
      :defs $ {}
        |updater $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1767546522350) (:by |sync)
            :data $ {}
              |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |defn)
              |V $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |updater)
              |X $ %{} :Expr (:at 1767546522350) (:by |sync)
                :data $ {}
                  |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |store)
                  |V $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |op)
                  |X $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |op-id)
                  |Z $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |op-time)
              |Z $ %{} :Expr (:at 1767546522350) (:by |sync)
                :data $ {}
                  |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |tag-match)
                  |V $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |op)
                  |X $ %{} :Expr (:at 1767546522350) (:by |sync)
                    :data $ {}
                      |T $ %{} :Expr (:at 1767546522350) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |:states)
                          |V $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |cursor)
                          |X $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |s)
                      |V $ %{} :Expr (:at 1767546522350) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |update-states)
                          |V $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |store)
                          |X $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |cursor)
                          |Z $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |s)
                  |Z $ %{} :Expr (:at 1767546522350) (:by |sync)
                    :data $ {}
                      |T $ %{} :Expr (:at 1767546522350) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |:content)
                          |V $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |c)
                      |V $ %{} :Expr (:at 1767546522350) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |assoc)
                          |V $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |store)
                          |X $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |:content)
                          |Z $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |c)
                  |b $ %{} :Expr (:at 1767546522350) (:by |sync)
                    :data $ {}
                      |T $ %{} :Expr (:at 1767546522350) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |:hydrate-storage)
                          |V $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |d)
                      |V $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |d)
                  |d $ %{} :Expr (:at 1767546522350) (:by |sync)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |_)
                      |V $ %{} :Expr (:at 1767546522350) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |do)
                          |V $ %{} :Expr (:at 1767546522350) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |js/console.warn)
                              |V $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text "|\"Unknown op:")
                              |X $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |op)
                          |X $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |store)
          :examples $ []
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1767546522350) (:by |sync)
          :data $ {}
            |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |ns)
            |V $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |respo-alerts.updater)
            |X $ %{} :Expr (:at 1767546522350) (:by |sync)
              :data $ {}
                |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |:require)
                |V $ %{} :Expr (:at 1767546522350) (:by |sync)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |respo.cursor)
                    |V $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |:refer)
                    |X $ %{} :Expr (:at 1767546522350) (:by |sync)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |update-states)
                |X $ %{} :Expr (:at 1767546522350) (:by |sync)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |respo-alerts.config)
                    |V $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |:refer)
                    |X $ %{} :Expr (:at 1767546522350) (:by |sync)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1767546522350) (:by |sync) (:text |dev?)
        :examples $ []
    |respo-alerts.util $ %{} :FileEntry
      :defs $ {}
        |focus-element! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1767546522349) (:by |sync)
            :data $ {}
              |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |defn)
              |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |focus-element!)
              |X $ %{} :Expr (:at 1767546522349) (:by |sync)
                :data $ {}
                  |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |query)
              |Z $ %{} :Expr (:at 1767546522349) (:by |sync)
                :data $ {}
                  |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |if-let)
                  |V $ %{} :Expr (:at 1767546522349) (:by |sync)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |target)
                      |V $ %{} :Expr (:at 1767546522349) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |js/document.querySelector)
                          |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |query)
                  |X $ %{} :Expr (:at 1767546522349) (:by |sync)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |.!focus)
                      |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |target)
          :examples $ []
        |select-element! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1767546522349) (:by |sync)
            :data $ {}
              |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |defn)
              |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |select-element!)
              |X $ %{} :Expr (:at 1767546522349) (:by |sync)
                :data $ {}
                  |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |query)
              |Z $ %{} :Expr (:at 1767546522349) (:by |sync)
                :data $ {}
                  |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |let)
                  |V $ %{} :Expr (:at 1767546522349) (:by |sync)
                    :data $ {}
                      |T $ %{} :Expr (:at 1767546522349) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |target)
                          |V $ %{} :Expr (:at 1767546522349) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |js/document.querySelector)
                              |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |query)
                  |X $ %{} :Expr (:at 1767546522349) (:by |sync)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |if)
                      |V $ %{} :Expr (:at 1767546522349) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |some?)
                          |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |target)
                      |X $ %{} :Expr (:at 1767546522349) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |.!select)
                          |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |target)
          :examples $ []
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1767546522349) (:by |sync)
          :data $ {}
            |T $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |ns)
            |V $ %{} :Leaf (:at 1767546522349) (:by |sync) (:text |respo-alerts.util)
        :examples $ []
  :users $ {}
    |rJG4IHzWf $ {} (:avatar nil) (:id |rJG4IHzWf) (:name |chen) (:nickname |chen) (:password |d41d8cd98f00b204e9800998ecf8427e) (:theme :star-trail)
    |root $ {} (:avatar nil) (:id |root) (:name |root) (:nickname |root) (:password |d41d8cd98f00b204e9800998ecf8427e) (:theme :star-trail)
