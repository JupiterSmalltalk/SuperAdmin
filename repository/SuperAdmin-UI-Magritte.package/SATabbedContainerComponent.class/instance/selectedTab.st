accessing
selectedTab
  ^ selectedTab ifNil: [ selectedTab := self tabs first at: #'id' ]