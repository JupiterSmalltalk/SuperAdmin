accessing
pathToRootOfType
  "Answer the via parent to an object that answers false to isRoot"

  ^ self isRootOfType
    ifTrue: [ {self} ]
    ifFalse: [ 
      self parent pathToRootOfType
        add: self;
        yourself ]