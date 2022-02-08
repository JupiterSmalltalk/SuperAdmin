rendering
renderTabsOn: canvas
  canvas div
    class: 'tab-container';
    with: [ 
          canvas tbsNav
            beTabs;
            role: 'tablist';
            with: [ self tabsToDisplay do: [ :tab | self renderTab: tab on: canvas ] ].
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
                      self
                        perform:
                          ('render' , (tab at: #'id') capitalized , 'On:') asSymbol
                        with: canvas ] ] ]