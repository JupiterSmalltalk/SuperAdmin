descriptions
userNameDescription
  <magritteDescription>
  ^ MAStringDescription new
    accessor: #'userName';
    label: 'Email Address';
    priority: 100;
    componentClass: SATextInputComponent;
    propertyAt: #'icon' put: 'envelope';
    beRequired;
    yourself