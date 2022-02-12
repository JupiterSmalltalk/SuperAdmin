rendering
renderCellLinkContent: anObject on: canvas
  "Icon command key -> { textString. iconSelectorSymbol }"

  self commands
    do: [ :each | 
      canvas anchor
        class: 'icon-command actions__item';
        callback: [ each key value: anObject ];
        with: [ 
              canvas fontAwesome
                fontAwesomeLight;
                icon: each value last.
              canvas span visuallyHidden with: each value first ] ]
    separatedBy: [ 
      canvas
        space;
        space ]