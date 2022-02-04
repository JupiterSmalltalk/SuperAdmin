descriptions
passwordDescription
  <magritteDescription>
  ^ MAPasswordDescription new
    accessor: #'password';
    label: 'Password';
    priority: 110;
    componentClass: SAPasswordInputComponent;
    propertyAt: #'icon' put: 'key';
    beRequired;
    yourself