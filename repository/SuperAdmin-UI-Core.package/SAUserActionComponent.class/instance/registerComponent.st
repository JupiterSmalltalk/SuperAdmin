components
registerComponent
  | component |
  ^ self components
    at: #'register'
    ifAbsentPut: [ 
      (component := self registerDescription asComponentOn: self)
        addValidatedForm:
            {(SAFormButton selector: #'save' label: 'Register' icon: 'sign-in')};
        onAnswer: [ self registerAction ];
        yourself.
      component formDecoration
        useReCaptcha: true;
        disableOnSubmit: true;
        showSpinnerOnSubmit: true.
      component ]