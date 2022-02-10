*SuperAdmin-Magritte
InternationalDateAndTimeFormat
  ^ String
    streamContents: [ :stream | 
      stream
        nextPutAll: self date InternationalDateFormat;
        nextPut: Character space;
        nextPutAll: self time asString ]