rendering
renderForgotPasswordOn: canvas
  canvas div
    class: 'login__block__header';
    with: [ 
          canvas div with: [ self renderLogoOn: canvas ].
          canvas text: 'Forgot Password?'.
          self renderUserActionsOn: canvas ].
  canvas div
    class: 'login__block__body';
    with: [ 
          self renderErrorsForSection: action on: canvas.
          canvas render: self forgotPasswordComponent ]