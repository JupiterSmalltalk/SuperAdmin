accessing
pathToRoot
  "Answer the via parent to an object that answers false to isRoot"

  ^ self isRoot
    ifTrue: [ {self} ]
    ifFalse: [ 
      self parent pathToRoot
        add: self;
        yourself ]