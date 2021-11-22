rendering
renderHeadingOn: canvas
  canvas section
    class: 'content-header';
    with: [ 
          canvas heading
            with: [ 
              canvas text: (self stringFromObjectOrBlock: self label).
              canvas small with: [ self renderSubheadingOn: canvas ] ] ]