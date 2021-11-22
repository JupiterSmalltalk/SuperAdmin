accessing
root
  "Answer the root component - typically a subclass of AdminLTE. "

  ^ self isRoot
    ifTrue: [ self ]
    ifFalse: [ self parent root ]