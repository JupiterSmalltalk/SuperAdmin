rendering-panels
renderVisitorWidgetOn: canvas
  canvas div
    class: 'card widget-visitors';
    with: [ 
          canvas cardBody
            with: [ 
              canvas heading
                level4;
                class: 'card-title';
                with: 'Players'.
              canvas paragraph
                class: 'card-subtitle';
                with: 'Latest Player information'.
              canvas div
                class: 'widget-visitors__stats';
                with: [ 
                      canvas
                        div: [ 
                          canvas
                            strong: '1234';
                            small: 'Players for last 24 hours' ].
                      canvas
                        div: [ 
                          canvas
                            strong: '123';
                            small: 'Players for last 30 minutes' ] ].
              canvas div
                class: 'widget-visitors__map map-visitors';
                with: [  ] ] ]