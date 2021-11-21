rendering-app-launcher
renderAppLauncherTopNavOn: canvas
  canvas navigationItem
    dropdown;
    class: '';
    with: [ 
          canvas anchor
            attributeAt: 'data-bs-toggle' put: 'dropdown';
            attributeAt: 'aria-expanded' put: false;
            with: [ 
                  canvas fontAwesome
                    fontAwesomeLight;
                    icon: 'th' ].
          canvas dropdownMenu
            class: 'dropdown-menu-end dropdown-menu--block';
            attributeAt: 'data-bs-display' put: 'static';
            with: [ 
                  canvas dropdownHeader
                    level6;
                    with: [ 
                          canvas fontAwesome
                            fontAwesomeDuotone;
                            icon: 'th';
                            style: 'font-size: 1.5rem; margin-right: 1rem'.
                          canvas text: 'App Launcher' ].
                  self renderAppLauncherItemsOn: canvas ] ]