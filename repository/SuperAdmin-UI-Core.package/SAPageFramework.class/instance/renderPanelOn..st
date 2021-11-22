rendering-panels
renderPanelOn: canvas
  canvas section
    class: 'content';
    with: [ 
          self
            renderPanelHeaderOn: canvas;
            renderPanelStatsOn: canvas;
            renderPanelRealTimeWidgetsOn: canvas;
            renderPanelFooterOn: canvas ]