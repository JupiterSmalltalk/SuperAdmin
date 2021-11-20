rendering
renderContentOn: canvas
  showLoadingScreen
    ifTrue: [ 
      self renderPageLoaderOn: canvas.
      showLoadingScreen := false ].
  super renderContentOn: canvas