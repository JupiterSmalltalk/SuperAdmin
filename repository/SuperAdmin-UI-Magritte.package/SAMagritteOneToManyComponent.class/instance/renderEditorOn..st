rendering
renderEditorOn: canvas
  canvas
    row: [ 
      canvas column
        smallSize: 6;
        with: [ self renderSearchOn: canvas ].
      canvas column
        smallSize: 6;
        class: 'text-end';
        with: [ 
              self magritteDescription isDefinitive
                ifFalse: [ self renderSelectListOn: canvas ] ] ].
  self renderViewerOn: canvas