visiting-description
visitDateDescription: aDescription
  self object
    ifNotNil: [ self stream nextPutAll: (self object asStringUsingFormat: #(3 2 1 $- 1 1)) ]