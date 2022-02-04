actions
calculateAction
  action ifNotNil: [ ^ self ].
  self session isLocked
    ifTrue: [ self beLock ]
    ifFalse: [ self beLogin ]