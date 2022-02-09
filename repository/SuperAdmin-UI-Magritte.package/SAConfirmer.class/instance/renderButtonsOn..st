rendering
renderButtonsOn: canvas
  canvas
    buttonGroup: [ 
      (canvas formButton on: #'yes' of: self) bePrimary.
      canvas formButton on: #'no' of: self ]