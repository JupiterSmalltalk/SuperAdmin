rendering-panels
renderPanelOn: canvas
  canvas render: selectedPanel	"self
            renderPanelHeaderOn: canvas;
            renderPanelStatsOn: canvas;
            renderPanelRealTimeWidgetsOn: canvas;
            renderPanelFooterOn: canvas"