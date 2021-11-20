initialisation
initialize
  super initialize.
  self
    subscribe: SALock do: [ :ann | self beLock ] for: self;
    subscribe: SALogout do: [ :ann | self beLogin ] for: self.
  (self errorsForSection: 'forgotPassword')
    add: [ :html | 
      html
        paragraph:
          'If there is an account in the system with the provided email address, an email will be sent with a password recovery link.' ]