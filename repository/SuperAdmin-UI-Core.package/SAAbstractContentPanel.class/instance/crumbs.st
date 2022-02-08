accessing
crumbs
  | crumbs |
  crumbs := OrderedCollection new.
  self
    allPresentersDo: [ :presenter | 
      (presenter isKindOf: SAContainerComponent)
        ifTrue: [ 
          crumbs
            add:
              (Dictionary new
                at: #'icon' put: presenter icon;
                at: #'title'
                  put:
                    (presenter memento cache at: presenter model titleDescription);
                at: #'presenter' put: presenter;
                yourself) ] ].
  ^ crumbs reverse