rendering
renderMainMessageOn: html
  html fontAwesome
    fontAwesome2x;
    icon: 'warning-icon'.
  html div
    style: 'font-size: 50px;line-height: 37px;padding-bottom: 30px;';
    with: [ html text: 'OOPS! SOMETHING WENT WRONG' ].
  html
    paragraph:
      'The operation you tried failed because of an unexpected error. You may want to either go back with the browser and try again, sign out and sign in and try again, or contact us about the error with the given information on this screen. However, note that other aspects of the program should continue to work normally.'