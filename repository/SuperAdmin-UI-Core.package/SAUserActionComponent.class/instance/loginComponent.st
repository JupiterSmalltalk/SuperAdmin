components
loginComponent
  | component |
  ^ self components
    at: #'login'
    ifAbsentPut: [ 
      (component := self loginDescription asComponentOn: self)
        addValidatedForm:
            {(SAFormButton selector: #'save' label: 'Sign In' icon: 'sign-in')};
        onAnswer: [ self loginAction ];
        yourself.
      component formDecoration
        disableOnSubmit;
        showSpinnerOnSubmit: true.
      component ]