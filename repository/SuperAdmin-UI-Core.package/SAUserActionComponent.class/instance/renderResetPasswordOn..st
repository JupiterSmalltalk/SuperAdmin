rendering
renderResetPasswordOn: canvas
  canvas div
    class: 'login__block__header';
    with: [ 
          canvas div
            class: 'logo';
            with: [ self renderLogoOn: canvas ].
          canvas text: 'Reset Password' ].
  canvas div
    class: 'login__block__body';
    with: [ 
          self renderErrorsForSection: action on: canvas.
          canvas render: self resetPasswordComponent ]