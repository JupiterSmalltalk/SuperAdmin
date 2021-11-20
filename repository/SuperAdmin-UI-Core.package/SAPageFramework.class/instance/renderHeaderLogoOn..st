rendering-header
renderHeaderLogoOn: canvas
  canvas div
    class: 'logo';
    class: 'd-inline-flex';
    with: [ 
          canvas anchor
            callback: [ 
                  "Select default Component"
                   ];
            with: [ 
                  "Add your logo"
                   ] ]