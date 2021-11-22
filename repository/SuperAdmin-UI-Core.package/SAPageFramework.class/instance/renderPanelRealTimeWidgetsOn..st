rendering-panels
renderPanelRealTimeWidgetsOn: canvas
  canvas div
    class: 'widget-lists card-columns';
    with: [ 
          self
            renderVisitorWidgetOn: canvas;
            renderServerStatsWidgetOn: canvas ]