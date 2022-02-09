components
forgotPasswordComponent
  | component |
  ^ self components
    at: #'forgotPassword'
    ifAbsentPut: [ 
      (component := self forgotPasswordDescription asComponentOn: self)
        addValidatedForm:
            {(SAFormButton selector: #'save' label: 'Send Email' icon: 'check')};
        onAnswer: [ self forgotPasswordAction ];
        yourself.
      component formDecoration
        useReCaptcha: true;
        disableOnSubmit: true;
        showSpinnerOnSubmit: true.
      component ]