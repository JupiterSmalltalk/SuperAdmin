testing
isRootOfType
  "Answer true is my parent is not the same class as me"

  ^ self class ~~ self parent class