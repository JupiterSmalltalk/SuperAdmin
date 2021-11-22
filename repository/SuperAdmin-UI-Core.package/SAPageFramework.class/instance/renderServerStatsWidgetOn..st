rendering-panels
renderServerStatsWidgetOn: canvas
  canvas div
    class: 'card';
    with: [ 
          canvas cardBody
            with: [ 
              canvas heading
                level4;
                class: 'card-title';
                with: 'Server Statistics'.
              canvas paragraph
                class: 'card-subtitle';
                with: 'Information on Endless Online Servers'.
              canvas div class: 'flot-chart flot-dynamic'.
              canvas div class: 'flot-chart-legends flot-chart-legends--dynamic' ] ]