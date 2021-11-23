rendering-sidebar
renderSidebarNavigationItems: items on: canvas
  items
    do: [ :item | 
      item class == SAPanelGroup
        ifTrue: [ 
          canvas listItem
            class: 'navigation__active' if: selectedPanel == item;
            class: 'navigation__sub';
            class: 'navigation__sub--toggled'
              if:
                (item panels detect: [ :panel | panel == selectedPanel ] ifNone: [ nil ]) notNil;
            with: [ 
                  self renderSidebarNavigationItem: item on: canvas.
                  canvas
                    unorderedList: [ self renderSidebarNavigationItems: item panels on: canvas ] ] ]
        ifFalse: [ 
          canvas listItem
            class: 'navigation__active' if: selectedPanel == item;
            with: [ self renderSidebarNavigationItem: item on: canvas ] ] ]