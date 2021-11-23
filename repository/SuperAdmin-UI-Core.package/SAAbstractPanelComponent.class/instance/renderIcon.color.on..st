rendering-convenience
renderIcon: iconNameOrBlock color: color on: canvas
  | iconName iconTag |
  iconName := iconNameOrBlock isBlock
    ifFalse: [ iconNameOrBlock ]
    ifTrue: [ 
      iconNameOrBlock argumentCount == 0
        ifTrue: [ iconNameOrBlock value ]
        ifFalse: [ 
          iconNameOrBlock argumentCount == 1
            ifTrue: [ ^ iconNameOrBlock value: canvas ] ] ].
  iconTag := canvas fontAwesome
    fontAwesomeLight;
    icon: iconName.
  color ifNotNil: [ self color: color tag: iconTag ]