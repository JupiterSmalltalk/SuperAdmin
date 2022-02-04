rendering
renderSelectButtonOn: html
  self isReadonly
    ifFalse: [ 
      html tbsButton
        beLabeled;
        beSubmit;
        bePrimary;
        callback: [ self add ];
        accessKey: 'a';
        with: [ 
              html
                tbsButtonLabel: [ 
                  html fontAwesome
                    fontAwesomeLight;
                    icon: 'plus' ].
              html text: (self labelForSelector: #'add') ] ]