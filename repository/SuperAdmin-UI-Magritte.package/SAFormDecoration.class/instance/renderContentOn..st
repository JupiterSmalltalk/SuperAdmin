rendering
renderContentOn: html
  | form |
  formId := html nextId.
  form := html form
    id: formId;
    yourself.
  form
    class: 'magritte';
    multipart: self requiresMultipartForm;
    defaultAction: [ self execute: self default ];
    with: [ 
          self renderNextOn: html.
          self useReCaptcha
            ifTrue: [ 
              html script
                url: 'https://www.google.com/recaptcha/api.js';
                async;
                defer.
              html div
                class: 'g-recaptcha mb-3';
                attributeAt: 'data-sitekey'
                  put: (self application preferenceAt: #'reCaptchaSiteKey');
                attributeAt: 'data-size' put: 'normal' ].
          self renderButtonsOn: html.
          html script: self onSubmitScript ]