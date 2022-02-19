initialization
initialize
  super initialize.
  announcer := Announcer new.
  announcer on: SATabSelected do: [ :ann | selectedTab := ann tab ] for: self