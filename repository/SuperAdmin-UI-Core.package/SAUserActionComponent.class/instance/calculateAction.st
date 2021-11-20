actions
calculateAction
  action ifNotNil: [ ^ self ].
  self session isLoggedIn not
    ifTrue: [ 
      self session isLocked
        ifTrue: [ self beLock ]
        ifFalse: [ self beLogin ] ]