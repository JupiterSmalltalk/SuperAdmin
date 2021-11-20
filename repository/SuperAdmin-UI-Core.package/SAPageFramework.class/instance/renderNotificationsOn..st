rendering-notifications
renderNotificationsOn: canvas
  self notifications
    do: [ :notification | 
      canvas navigationLink
        class: 'listview__item';
        with: [ 
              notification imageUrl
                ifNotNil: [ 
                  canvas image
                    class: 'avatar-img';
                    url: notification imageUrl ]
                ifNil: [ 
                  notification iconName
                    ifNotNil: [ 
                      canvas fontAwesome
                        fontAwesomeLight;
                        icon: notification iconName;
                        class: 'avatar-icon' ] ].
              canvas div
                class: 'listview__content';
                with: [ 
                      canvas div
                        class: 'listview__heading';
                        with: [ canvas text: notification heading ].
                      canvas paragraph: notification text ] ] ]