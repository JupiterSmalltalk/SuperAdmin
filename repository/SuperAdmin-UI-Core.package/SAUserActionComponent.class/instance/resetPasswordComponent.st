components
resetPasswordComponent
  ^ self components
    at: #'resetPassword'
    ifAbsentPut: [ 
      (self resetPasswordDescription asComponentOn: self)
        addValidatedForm:
            {(SAFormButton selector: #'save' label: 'Reset' icon: 'paper-plane')};
        onAnswer: [ self resetPasswordAction ];
        yourself ]