accessing-properties
badgeColor
  ^ self properties at: #'badgeColor' ifAbsent: [ nil ]