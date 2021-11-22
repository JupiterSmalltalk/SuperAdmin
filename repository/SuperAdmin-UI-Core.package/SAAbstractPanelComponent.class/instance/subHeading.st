accessing-properties
subHeading
  "Answer a String, Symbol selector or block whose value answers string or selector"

  ^ self properties at: #'subHeading' ifAbsent: [ self defaultSubHeading ]