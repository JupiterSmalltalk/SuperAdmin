rendering-sidebar
renderSidebarNavigationItemsOn: canvas
  canvas listItem
    class: 'navigation__active';
    with: [ 
          canvas
            anchor: [ 
              canvas fontAwesome
                fontAwesomeLight;
                icon: 'home';
                class: 'sidebar-nav-icon'.
              canvas text: 'Home' ] ].
  canvas listItem
    class: '';
    with: [ 
          canvas
            anchor: [ 
              canvas fontAwesome
                fontAwesomeLight;
                icon: 'clipboard-user';
                class: 'sidebar-nav-icon'.
              canvas text: 'Reservations' ] ].
  canvas listItem
    class: '';
    with: [ 
          canvas
            anchor: [ 
              canvas fontAwesome
                fontAwesomeLight;
                icon: 'money-check-edit-alt';
                class: 'sidebar-nav-icon'.
              canvas text: 'Donations' ] ].
  canvas listItem
    class: '';
    with: [ 
          canvas
            anchor: [ 
              canvas fontAwesome
                fontAwesomeLight;
                icon: 'users-crown';
                class: 'sidebar-nav-icon'.
              canvas text: 'Friends' ] ].
  canvas listItem
    class: '';
    with: [ 
          canvas
            anchor: [ 
              canvas fontAwesome
                fontAwesomeLight;
                icon: 'landmark';
                class: 'sidebar-nav-icon'.
              canvas text: 'Guilds' ] ]