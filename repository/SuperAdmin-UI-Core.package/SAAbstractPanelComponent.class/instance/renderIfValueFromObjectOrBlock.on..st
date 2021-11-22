rendering-convenience
renderIfValueFromObjectOrBlock: objectOrZeroOrOneArgBlock on: canvas
  self
    renderTemplate: [ :html :contentBlock | contentBlock value: html ]
    ifValueFromObjectOrBlock: objectOrZeroOrOneArgBlock
    on: canvas