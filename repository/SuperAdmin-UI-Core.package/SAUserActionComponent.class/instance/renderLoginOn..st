rendering
renderLoginOn: canvas
  canvas div
    class: 'login__block__header';
    with: [ 
          canvas div with: [ self renderLogoOn: canvas ].
          canvas text: 'Welcome. Please sign in.'.
          self renderUserActionsOn: canvas ].
  canvas div
    class: 'login__block__body';
    with: [ 
          self renderErrorsForSection: action on: canvas.
          canvas render: self loginComponent ]