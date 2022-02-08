initialization
initialize
  super initialize.
  announcer := Announcer new.
  announcer
    subscribe: SATabSelected
    do: [ :ann | selectedTab := ann tab ]
    for: self