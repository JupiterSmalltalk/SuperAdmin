descriptions
titleDescription
  <magritteDescription>
  ^ MAStringDescription new
    accessor: #'title';
    label: 'Name';
    priority: 50;
    componentClass: SATextInputComponent;
    propertyAt: #'icon' put: 'zwicon-user';
    beRequired;
    yourself