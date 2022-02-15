accessing-defaults
defaultDisplayProperty
  ^ [ :aDateOrNil | 
  aDateOrNil
    ifNotNil: [ aDateOrNil asStringUsingFormat: #(3 2 1 $- 1 1) ]
    ifNil: [ '' ] ]