rendering
renderTab: tab tabsId: tabsId on: canvas
  canvas navigationItem
    with: [ 
      canvas navigationLink
        beActiveIf: self selectedTab == (tab at: #'id');
        role: 'tab';
        attributeAt: 'data-bs-toggle' put: 'tab';
        attributeAt: 'data-bs-target' put: '#' , tabsId , '_' , (tab at: #'id');
        with: [ 
              "callback: [ 
                  self validate
                    ifTrue: [ 
                      self commit.
                      (tab at: #'callback') value ] ];"
              (tab at: #'icon')
                ifNotNil: [ 
                  canvas fontAwesome
                    fontAwesomeLight;
                    icon: (tab at: #'icon').
                  canvas space ].
              canvas render: (tab at: #'label') ] ]