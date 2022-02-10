rendering
renderIconButton: iconButton on: html
  | button |
  (button := html button)
    title: iconButton label;
    accessKey: 's';
    class: 'btn btn-theme btn--icon iconButton';
    class: 'button-spinner' if: self showSpinnerOnSubmit;
    callback: [ self execute: iconButton key ].
  self useReCaptcha
    ifFalse: [ button beSubmit ].
  button
    with: [ 
      html fontAwesome
        fontAwesomeLight;
        icon: iconButton icon ]