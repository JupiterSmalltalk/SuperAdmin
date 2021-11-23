rendering-sidebar
renderSidebarNavigationItemsOn: canvas
  self panels
    do: [ :panel | 
      (panel isKindOf: SAPanelGroup)
        ifTrue: [  ]
        ifFalse: [  ] ].
  canvas listItem
    class: 'navigation__active';
    with: [ 
          canvas
            anchor: [ 
              canvas fontAwesome
                fontAwesomeLight;
                icon: 'home'.
              canvas text: 'Home' ] ].
  canvas listItem
    class: '';
    with: [ 
          canvas
            anchor: [ 
              canvas fontAwesome
                fontAwesomeLight;
                icon: 'clipboard-user'.
              canvas text: 'Reservations' ] ].
  canvas listItem
    class: '';
    with: [ 
          canvas
            anchor: [ 
              canvas fontAwesome
                fontAwesomeLight;
                icon: 'money-check-edit-alt'.
              canvas text: 'Donations' ] ].
  canvas listItem
    class: '';
    with: [ 
          canvas
            anchor: [ 
              canvas fontAwesome
                fontAwesomeLight;
                icon: 'user-friends'.
              canvas text: 'Friends' ].
          canvas listItem
            class: 'navigation__sub';
            with: [ 
                  canvas
                    anchor: [ 
                      canvas fontAwesome
                        fontAwesomeLight;
                        icon: 'landmark'.
                      canvas text: 'Guilds' ].
                  canvas
                    unorderedList: [ 
                      canvas
                        listItem: [ 
                          canvas anchor
                            with: [ 
                              canvas fontAwesome
                                fontAwesomeLight;
                                icon: 'cog'.
                              canvas text: 'Guild Settings' ] ].
                      canvas
                        listItem: [ 
                          canvas anchor
                            with: [ 
                              canvas fontAwesome
                                fontAwesomeLight;
                                icon: 'users-crown'.
                              canvas text: 'Members' ] ] ] ] ]