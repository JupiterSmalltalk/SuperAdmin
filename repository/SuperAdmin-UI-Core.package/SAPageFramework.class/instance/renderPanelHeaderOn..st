rendering-panels
renderPanelHeaderOn: canvas
  canvas header
    class: 'content__title';
    with: [ 
          canvas heading
            level1;
            with: [ 
                  canvas
                    text: 'DASHBOARD';
                    small: 'Welcome to your Endless Online dashboard' ].
          canvas div
            class: 'actions';
            with: [ 
                  canvas anchor
                    class: 'actions__item';
                    with: [ 
                          canvas fontAwesome
                            fontAwesomeLight;
                            icon: 'cog' ].
                  canvas anchor
                    class: 'actions__item';
                    with: [ 
                          canvas fontAwesome
                            fontAwesomeLight;
                            icon: 'sync' ] ] ]