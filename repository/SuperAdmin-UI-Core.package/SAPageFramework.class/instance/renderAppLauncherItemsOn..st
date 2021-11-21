rendering-app-launcher
renderAppLauncherItemsOn: canvas
  canvas row
    class: 'app-shortcuts';
    with: [ 
          canvas anchor
            class: 'col-4';
            class: 'app-shortcuts__item';
            with: [ 
                  canvas fontAwesome
                    fontAwesomeDuotone;
                    icon: 'users-cog'.
                  canvas small: 'User Manager' ].
          canvas anchor
            class: 'col-4';
            class: 'app-shortcuts__item';
            with: [ 
                  canvas fontAwesome
                    fontAwesomeDuotone;
                    icon: 'money-check-edit-alt'.
                  canvas small: 'Donation Manager' ] ]