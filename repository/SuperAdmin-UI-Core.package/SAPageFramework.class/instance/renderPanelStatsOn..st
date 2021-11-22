rendering-panels
renderPanelStatsOn: canvas
  canvas row
    class: 'quick-stats';
    with: [ 
          1 to: 4 do: [ :i | 
            canvas column
              smallSize: 6;
              mediumSize: 3;
              with: [ 
                    canvas div
                      class: 'quick-stats__item';
                      with: [ 
                            canvas div
                              class: 'quick-stats__info';
                              with: [ 
                                    canvas heading
                                      level2;
                                      with: '123456'.
                                    canvas small: 'Total Players' ].
                            canvas div
                              class: 'quick-stats__chart';
                              class: 'peity-bar';
                              style: 'style="display: none;';
                              with: '1,2,3,4,6,9,10,14,16' ] ] ] ]