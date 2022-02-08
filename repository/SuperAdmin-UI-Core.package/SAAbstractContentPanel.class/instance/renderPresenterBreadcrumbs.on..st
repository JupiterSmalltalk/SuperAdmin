rendering
renderPresenterBreadcrumbs: crumbs on: canvas
  crumbs
    withIndexDo: [ :crumb :index | 
      canvas listItem
        class: 'breadcrumb-item';
        class: 'active' if: crumb == crumbs last;
        with: [ 
              canvas anchor
                callback: [ 
                      crumb ~~ crumbs last
                        ifTrue: [ ((crumbs at: index + 1) at: #'presenter') cancel ] ];
                with: [ 
                      canvas fontAwesome
                        fontAwesomeLight;
                        icon: (crumb at: #'icon').
                      canvas
                        space;
                        text: (crumb at: #'title') ] ] ]