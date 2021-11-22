initialization
initialize
  super initialize.
  panels := OrderedCollection new.
  (announcer := Announcer new)
    subscribe: SAPanelSelected
    send: #'panelSelectedAnnouncement:'
    to: self