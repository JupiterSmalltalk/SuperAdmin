rendering-sidebar
renderSidebarUserOn: canvas
  | user |
  user := self session user.
  canvas div
    class: 'user dropdown';
    with: [ 
          canvas div
            class: 'user__info';
            attributeAt: 'data-bs-toggle' put: 'dropdown';
            with: [ 
                  "canvas image
                    class: 'user__img';
                    url: SAFileLibrary / #'imgavatar3Png'."
                  canvas fontAwesome
                    fontAwesomeLight;
                    fontAwesome2x;
                    icon: 'user';
                    class: 'avatar_char'.
                  canvas div
                    with: [ 
                      canvas div
                        class: 'user__name';
                        with: [ canvas text: user title ].
                      canvas div
                        class: 'user__email';
                        with: [ canvas text: user emailAddress ] ] ].
          canvas div
            class: 'dropdown-menu';
            with: [ 
                  canvas anchor
                    class: 'dropdown-item';
                    with: [ canvas text: 'View Profile' ].
                  canvas anchor
                    class: 'dropdown-item';
                    with: [ canvas text: 'Settings' ].
                  canvas horizontalRule class: 'dropdown-divider'.
                  canvas anchor
                    class: 'dropdown-item external';
                    callback: [ self session announce: (SALock user: self session user) ];
                    with: [ canvas text: 'Lock' ].
                  canvas anchor
                    class: 'dropdown-item external';
                    callback: [ self session announce: (SALogout user: self session user) ];
                    with: [ canvas text: 'Logout' ] ] ]