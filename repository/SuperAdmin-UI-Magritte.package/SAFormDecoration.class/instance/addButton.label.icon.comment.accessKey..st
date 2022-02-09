actions
addButton: aSymbolOrOneArgumentBlock label: label icon: icon comment: comment accessKey: accessKey
  self buttons
    add:
      (SAFormButton
        selector: aSymbolOrOneArgumentBlock
        label: label
        icon: icon
        comment: comment
        accessKey: accessKey)