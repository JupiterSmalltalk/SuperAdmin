rendering
renderTabsOn: canvas
  | tabsId |
  tabsId := canvas nextId.
  canvas div
    class: 'tab-container';
    with: [ 
          canvas unorderedList
            class: 'nav nav-tabs';
            role: 'tablist';
            with: [ self tabsToDisplay do: [ :tab | self renderTab: tab tabsId: tabsId on: canvas ] ].
          self errors
            ifNotNil: [ 
              canvas div
                class: 'errors';
                with: [ self errors do: [ :error | canvas paragraph: error ] ] ].
          canvas div
            class: 'tab-content';
            with: [ 
                  self tabsToDisplay
                    do: [ :tab | 
                      canvas div
                        class: 'tab-pane fade';
                        class: 'active show'
                          if: self selectedTab == (tab at: #'id');
                        role: 'tabpanel';
                        id: '' , tabsId , '_' , (tab at: #'id');
                        with: [ 
                              self
                                perform:
                                  ('render' , (tab at: #'id') capitalized , 'On:') asSymbol
                                with: canvas ] ] ] ]