rendering-panels
renderPanelWrapperOn: canvas
  canvas section
    id: 'panel-content';
    class: 'content';
    with: [ self renderPanelOn: canvas ]