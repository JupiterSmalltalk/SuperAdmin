actions
lockAction
  action := 'lock'.
  self clearErrors.
  self hasValidator
    ifTrue: [ 
      (validator userWithName: self lockUser userName password: password)
        ifNil: [ 
          (self errorsForSection: 'lock')
            add: [ :html | 
              html
                paragraph: [ 
                  html
                    strong: 'The password was incorrect.';
                    break;
                    text: 'Please try again.' ] ].
          (Delay forSeconds: 5) wait ]
        ifNotNil: [ :loggedInUser | 
          self
            clearPasswords;
            removeComponentAt: #'lock'.
          ^ self announce: (SAUnlock user: loggedInUser) ] ]