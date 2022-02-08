rendering
renderSelectButtonOn: html
  self isReadonly
    ifFalse: [ 
      html button
        class: 'btn btn-theme btn--icon';
        beSubmit;
        callback: [ self add ];
        accessKey: 'a';
        with: [ 
              html fontAwesome
                fontAwesomeLight;
                icon: 'plus' ] ]