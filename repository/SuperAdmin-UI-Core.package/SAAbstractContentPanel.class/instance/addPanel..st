panels
addPanel: aSAContentPanel
  panels ifEmpty: [ selectedPanel := aSAContentPanel ].
  panels
    add:
      (aSAContentPanel
        parent: self;
        yourself)