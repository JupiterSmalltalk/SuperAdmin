rendering
renderButtonsOn: html
  html row
    class: 'form-buttons';
    with: [ 
          html column
            extraSmallSize: 6;
            class: 'secondary';
            with: [ 
                  self secondaryButtons
                    ifNotEmpty: [ :secButtons | 
                      secButtons
                        do: [ :each | 
                          each icon
                            ifNotNil: [ self renderIconButton: each on: html ]
                            ifNil: [ 
                              | tag |
                              tag := html button
                                class: each cssClasses;
                                accessKey: each accessKey;
                                callback: [ self execute: each selector ];
                                text: each label ] ]
                        separatedBy: [ html space ] ] ].
          html column
            extraSmallSize: 6;
            class: 'primary d-flex justify-content-end';
            with: [ 
                  self cancelButton
                    ifNotNil: [ :cancelButton | self renderIconButton: cancelButton on: html ].
                  self saveButton
                    ifNotNil: [ :saveButton | 
                      html space.
                      self renderIconButton: saveButton on: html ] ] ]