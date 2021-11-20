rendering
onSubmitScript
  | script |
  ^ JSStream
    on:
      (String
        streamContents: [ :stream | 
          stream nextPutAll: 'function onSubmit' , formId , '(event){'.
          self useReCaptcha
            ifTrue: [ 
              stream
                nextPutAll:
                  'if(grecaptcha.getResponse()==""){event.preventDefault();return;};' ].
          self showSpinnerOnSubmit
            ifTrue: [ 
              stream
                nextPutAll:
                  '$("#' , formId , ' .saveButton").toggleClass("spinner-active");' ].
          self disableOnSubmit
            ifTrue: [ 
              stream
                nextPutAll:
                  'setTimeout(function(){$("#' , formId
                    , ' .saveButton").prop("disabled",true);}, 0);' ].
          stream
            nextPutAll:
              '};var form = document.getElementById("' , formId
                , '");form.addEventListener("submit", onSubmit' , formId
                , ', true);' ])