rendering
renderTab: tab on: canvas
  canvas tbsNavItem
    beActiveIf: selectedTab == (tab at: #'id');
    with: [ 
          canvas button
            callback: [ 
                  self validate
                    ifTrue: [ 
                      self commit.
                      (tab at: #'callback') value ] ];
            with: [ 
                  (tab at: #'icon')
                    ifNotNil: [ 
                      canvas fontAwesome
                        fontAwesomeLight;
                        icon: (tab at: #'icon').
                      canvas space ].
                  canvas render: (tab at: #'label') ] ]