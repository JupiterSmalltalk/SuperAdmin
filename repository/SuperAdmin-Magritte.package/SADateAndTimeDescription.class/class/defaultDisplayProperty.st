defaults
defaultDisplayProperty
  ^ [ :aDateOrNil | aDateOrNil ifNotNil: [ aDateOrNil InternationalDateAndTimeFormat ] ifNil: [ '' ] ]