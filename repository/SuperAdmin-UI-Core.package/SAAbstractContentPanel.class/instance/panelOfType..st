panels
panelOfType: aPanelClass
  ^ panels detect: [ :panel | panel isKindOf: aPanelClass ] ifNone: [ nil ]