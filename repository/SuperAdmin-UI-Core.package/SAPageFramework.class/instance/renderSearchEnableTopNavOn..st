rendering-search
renderSearchEnableTopNavOn: canvas
  canvas navigationItem
    class: 'd-xl-none';
    with: [ 
          canvas anchor
            attributeAt: 'data-sa-action' put: 'search-open';
            with: [ 
                  canvas fontAwesome
                    fontAwesomeLight;
                    class: 'navbar-icon';
                    icon: 'search' ] ]