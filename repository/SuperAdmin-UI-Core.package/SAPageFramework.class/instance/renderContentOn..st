rendering
renderContentOn: canvas
  (self session isLoggedIn not or: [ self session isLocked ])
    ifTrue: [ self renderUserActionsComponentOn: canvas ]
    ifFalse: [ self renderMainOn: canvas ].
  self
    renderSupportForAjaxErrorHandlerOn: canvas;
    renderPulseScriptOn: canvas;
    renderJavascriptResourcesOn: canvas