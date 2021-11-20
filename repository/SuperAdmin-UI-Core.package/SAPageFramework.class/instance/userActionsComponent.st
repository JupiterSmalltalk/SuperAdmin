components
userActionsComponent
  ^ self components
    at: #'userActions'
    ifAbsentPut: [ 
      self userActionsComponentClass new
        validator: self;
        yourself ]