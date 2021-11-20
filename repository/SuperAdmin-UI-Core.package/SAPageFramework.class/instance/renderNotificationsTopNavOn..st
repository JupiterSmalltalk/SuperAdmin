rendering-notifications
renderNotificationsTopNavOn: canvas
  canvas navigationItem
    dropdown;
    class: 'top-nav__notifications';
    with: [ 
          canvas anchor
            class: 'top-nav__notify' if: self notifications notEmpty;
            attributeAt: 'data-bs-toggle' put: 'dropdown';
            attributeAt: 'aria-expanded' put: false;
            with: [ 
                  canvas fontAwesome
                    fontAwesomeLight;
                    class: 'navbar-icon';
                    icon: 'bell' ].
          canvas dropdownMenu
            class: 'dropdown-menu-end dropdown-menu--block';
            attributeAt: 'data-bs-display' put: 'static';
            with: [ 
                  canvas dropdownHeader
                    level6;
                    with: [ 
                          canvas fontAwesome
                            fontAwesomeDuotone;
                            icon: 'bell';
                            style: 'font-size: 1.5rem; margin-right: 1rem'.
                          canvas text: 'Notifications'.
                          canvas div
                            class: 'actions';
                            with: [ 
                                  canvas anchor
                                    class: 'actions__item';
                                    attributeAt: 'data-sa-action'
                                      put: 'notifications-clear';
                                    onClick:
                                        (canvas jQuery ajax callback: [ self notifications removeAll ]);
                                    with: [ 
                                          canvas fontAwesome
                                            fontAwesomeLight;
                                            icon: 'window-close' ] ] ].
                  canvas div
                    class: 'listview listview--hover';
                    with: [ 
                          canvas div
                            class: 'listview__scroll scrollbar';
                            with: [ self renderNotificationsOn: canvas ] ] ] ]