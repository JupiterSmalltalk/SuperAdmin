private
validatedFormOn: result forOperation: aString
  | com dec |
  dec := SAFormDecoration new
    addButton: #'save' label: 'Save' icon: 'check';
    addButton: #'saveAndRemainOpen' label: 'Save don''t close';
    addButton: #'cancel' label: 'Cancel' icon: 'times';
    yourself.
  com := result asComponent
    addDecoration: dec;
    yourself.
  description
    propertyAt: #'objectDecorationClasses'
    ifPresent: [ :decorationClasses | 
      decorationClasses
        do: [ :decorationClass | 
          self
            addDecorationClass: decorationClass
            component: com
            object: result
            label: aString ] ].
  (com respondsTo: #'addButtonsToForm:')
    ifTrue: [ com addButtonsToForm: dec ].
  ^ com