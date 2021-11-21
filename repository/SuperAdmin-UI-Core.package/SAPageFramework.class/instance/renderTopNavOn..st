rendering-topNav
renderTopNavOn: canvas
  canvas unorderedList
    class: 'top-nav';
    with: [ 
          self
            renderSearchEnableTopNavOn: canvas;
            renderNotificationsTopNavOn: canvas;
            renderAppLauncherTopNavOn: canvas;
            renderThemeSelectorTopNavOn: canvas ].
  self renderClockOn: canvas