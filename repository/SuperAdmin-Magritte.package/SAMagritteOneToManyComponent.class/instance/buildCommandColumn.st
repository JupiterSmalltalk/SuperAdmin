private
buildCommandColumn
  | retVal |
  retVal := SAIconCommandColumn new setReport: self report.
  retVal
    addCommandOn: self
    selector: #'edit:'
    text: 'edit'
    icon: 'edit'.
  self magritteDescription isDefinitive
    ifFalse: [ 
      retVal
        addCommandOn: self
        selector: #'remove:'
        text: 'delete'
        icon: 'trash-alt' ].
  self magritteDescription isOrdered
    ifTrue: [ 
      retVal
        addCommandOn: self selector: #'up:' icon: 'arrow-up';
        addCommandOn: self selector: #'down:' icon: 'arrow-down' ].
  ^ retVal