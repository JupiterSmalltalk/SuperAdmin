components
lockComponent
  | component |
  ^ self components
    at: #'lock'
    ifAbsentPut: [ 
      (component := self lockDescription asComponentOn: self)
        addValidatedForm:
            {(SAFormButton selector: #'save' label: 'Sign In' icon: 'unlock')};
        onAnswer: [ self lockAction ];
        yourself.
      component formDecoration
        disableOnSubmit;
        showSpinnerOnSubmit: true.
      component ]