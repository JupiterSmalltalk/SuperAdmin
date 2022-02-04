rendering
renderEditorOn: html
  | tag |
  html div
    class: 'input-group mb-3';
    with: [ 
          html span
            class: 'input-group-text';
            with: [ 
                  (description hasProperty: #'icon')
                    ifTrue: [ 
                      html fontAwesome
                        fontAwesomeLight;
                        icon: (description propertyAt: #'icon') ] ].
          html div
            class: 'form-floating grow-wrap';
            with: [ 
                  tag := html textArea formControl
                    id: self labelId;
                    rows: self magritteDescription lineCount;
                    onInput:
                        (JSStream on: 'this.parentNode.dataset.replicatedValue = this.value');
                    onFocus:
                        (JSStream on: 'this.parentNode.dataset.replicatedValue = this.value');
                    yourself.
                  self magritteDescription hasComment
                    ifTrue: [ tag placeholder: self magritteDescription comment ].
                  tag on: #'string' of: self.
                  html label
                    for: self labelId;
                    with: self magritteDescription label ] ]