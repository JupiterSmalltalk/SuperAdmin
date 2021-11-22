rendering-convenience
stringFromObjectOrBlock: object
  ^ object
    ifNotNil: [ 
      object isBlock
        ifTrue: [ 
          object argumentCount ~~ 0
            ifTrue: [ nil ]
            ifFalse: [ object value greaseString ] ]
        ifFalse: [ object greaseString ] ]