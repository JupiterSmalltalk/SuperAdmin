components
loginComponent
  | component |
  ^ self components
    at: #'login'
    ifAbsentPut: [ 
      (component := self loginDescription asComponentOn: self)
        addValidatedForm:
            {(SAFormButton selector: #'save' label: 'Sign In' icon: 'checkmark-circle')};
        onAnswer: [ self loginAction ];
        yourself.
      component formDecoration
        disableOnSubmit;
        showSpinnerOnSubmit: true.
      component ]