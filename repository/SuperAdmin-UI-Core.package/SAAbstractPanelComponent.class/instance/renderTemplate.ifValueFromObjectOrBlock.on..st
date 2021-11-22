rendering-convenience
renderTemplate: templateRenderBlock ifValueFromObjectOrBlock: objectOrZeroOrOneArgBlock on: canvas
  "Render a one argument block (with the argument being a render canvas) into template, 
or conditionally render template is objectOrZeroOrOneArgBlock is a block with a non-nil value, or any other object"

  (objectOrZeroOrOneArgBlock isBlock
    and: [ objectOrZeroOrOneArgBlock argumentCount == 1 ])
    ifTrue: [ 
      templateRenderBlock
        value: canvas
        value: [ :html | objectOrZeroOrOneArgBlock value: html ] ]
    ifFalse: [ 
      (self stringFromObjectOrBlock: objectOrZeroOrOneArgBlock)
        ifNotNil: [ :textToRender | templateRenderBlock value: canvas value: [ :html | html text: textToRender ] ] ]