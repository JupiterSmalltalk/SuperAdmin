rendering
renderMainOn: canvas
  canvas main
    class: 'main';
    with: [ 
          self
            renderHeaderOn: canvas;
            renderThemeSelectorOn: canvas;
            renderSidebarOn: canvas;
            renderPanelOn: canvas ]