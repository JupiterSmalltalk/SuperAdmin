rendering-themes
renderThemeSelectorTopNavOn: canvas
  canvas navigationItem
    class: 'd-sm-inline-block';
    with: [ 
          canvas anchor
            class: 'top-nav__themes';
            attributeAt: 'data-sa-action' put: 'aside-open';
            attributeAt: 'data-sa-target' put: '.themes';
            with: [ 
                  canvas fontAwesome
                    fontAwesomeLight;
                    class: 'navbar-icon';
                    icon: 'palette' ] ]