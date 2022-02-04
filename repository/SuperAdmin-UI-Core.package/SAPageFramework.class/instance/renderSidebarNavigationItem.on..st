rendering-sidebar
renderSidebarNavigationItem: item on: canvas
  | anchor |
  anchor := canvas anchor.
  item class == SAPanelGroup
    ifFalse: [ 
      anchor callback: [ announcer announce: (SAPanelSelected panel: item) ]	"onClick:
          (canvas jQuery ajax
            script: [ :s | 
              announcer announce: (SAPanelSelected panel: item).
              s
                <<
                  ((s jQuery this parents: 'ul') first find: 'li.navigation__active')
                removeClass: 'navigation__active'.
              s << s jQuery this parent addClass: 'navigation__active'.
              s << (s jQuery: '#panel-content')
                html: [ :r | self renderPanelOn: r ] ])" ].
  anchor
    with: [ 
      canvas fontAwesome
        fontAwesomeLight;
        icon: item icon.
      canvas text: item label ]