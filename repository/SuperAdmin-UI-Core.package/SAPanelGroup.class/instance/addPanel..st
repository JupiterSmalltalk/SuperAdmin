convenience
addPanel: aPanel
  self
    componentAt: aPanel class className
    ifAbsentPut:
      (aPanel
        parent: self parent;
        yourself)