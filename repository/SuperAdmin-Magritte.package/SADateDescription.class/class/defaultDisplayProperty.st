accessing-defaults
defaultDisplayProperty
  ^ [ :aDateOrNil | aDateOrNil ifNotNil: [ aDateOrNil InternationalDateFormat ] ifNil: [ '' ] ]