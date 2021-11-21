rendering-sidebar
renderSidebarNavigationOn: canvas
  canvas unorderedList
    class: 'navigation';
    with: [ self renderSidebarNavigationItemsOn: canvas ]