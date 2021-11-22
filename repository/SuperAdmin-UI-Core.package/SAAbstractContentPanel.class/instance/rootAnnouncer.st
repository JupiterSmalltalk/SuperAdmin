accessing
rootAnnouncer
  ^ self parent isNil
    ifTrue: [ announcer ]
    ifFalse: [ self parent rootAnnouncer ]