actions
loginAction
  action := 'login'.
  self clearErrors.
  self hasValidator
    ifTrue: [ 
      (validator userWithName: userName password: password)
        ifNil: [ 
          (self errorsForSection: 'login')
            add: [ :html | 
              html
                paragraph: [ 
                  html
                    strong: 'I was unable to sign you in with those details.';
                    break;
                    text: 'Review your entries and please try again.' ] ].
          (Delay forSeconds: 5) wait ]
        ifNotNil: [ :loggedInUser | 
          self
            clearPasswords;
            removeComponentAt: #'login'.
          ^ self announce: (SALogin user: loggedInUser) ] ]