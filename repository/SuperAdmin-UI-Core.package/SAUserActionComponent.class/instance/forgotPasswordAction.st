actions
forgotPasswordAction
  action := 'login'.
  (self errorsForSection: 'login')
    add: [ :html | 
      html
        paragraph:
          'If there is an account in the system with the provided email address, an email will be sent with a password recovery link.' ]