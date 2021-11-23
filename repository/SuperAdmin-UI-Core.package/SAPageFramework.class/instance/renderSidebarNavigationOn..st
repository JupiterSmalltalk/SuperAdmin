rendering-sidebar
renderSidebarNavigationOn: canvas
  canvas unorderedList
    class: 'navigation';
    with: [ self renderSidebarNavigationItems: self panels on: canvas ]