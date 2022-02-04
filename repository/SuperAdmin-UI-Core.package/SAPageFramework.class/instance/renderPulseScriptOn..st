rendering-loginAndLock
renderPulseScriptOn: html
  html document
    addLoadScript:
      (html jQuery ajax
        addParameter: 'pulse';
        script: [ :script | 
              self checkForUserLockOnScript: script.
              script add: true ];
        interval:
            (self session isLoggedIn
                ifTrue: [ 50000 ]
                ifFalse: [ 300000 ]))