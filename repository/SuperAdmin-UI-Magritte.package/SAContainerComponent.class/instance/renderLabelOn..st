rendering
renderLabelOn: canvas
  canvas heading
    level4;
    class: 'card-title';
    with: [ 
          canvas fontAwesome
            fontAwesomeLight;
            icon: self icon.
          canvas space.
          canvas
            render:
              ((self model readUsing: self model titleDescription)
                ifNil: [ self newObjectLabel ]) ]