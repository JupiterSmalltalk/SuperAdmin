rendering-panels
renderPanelFooterOn: canvas
  canvas footer
    class: 'footer d-none d-sm-block';
    with: [ 
          canvas paragraph
            with: [ 
              canvas
                html: '&copy;';
                space;
                text:
                    'Copyright 2021-2022 Rabid Games. All Rights and Remedies Reserved' ].
          canvas unorderedList
            class: 'footer__nav';
            with: [ 
                  canvas anchor with: 'Home Page'.
                  canvas anchor with: 'Rabid Games'.
                  canvas anchor with: 'Support'.
                  canvas anchor with: 'News'.
                  canvas anchor with: 'Contacts' ] ]