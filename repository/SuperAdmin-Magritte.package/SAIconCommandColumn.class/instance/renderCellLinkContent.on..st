rendering
renderCellLinkContent: anObject on: html
  "Icon command key -> { textString. iconSelectorSymbol }"

  self commands
    do: [ :each | 
      html anchor
        class: 'icon-command';
        callback: [ each key value: anObject ];
        with: [ 
              html fontAwesome
                fontAwesomeLight;
                icon: each value last.
              html span visuallyHidden with: each value first ] ]
    separatedBy: [ 
      html
        space;
        space ]