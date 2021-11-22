accessing
searchString
  "Used by search to find appropriate components"

  ^ String
    streamContents: [ :stream | 
      stream
        nextPutAll: label;
        space.
      self tags
        do: [ :tag | stream nextPutAll: (tag at: #'label') ]
        separatedBy: [ stream space ] ]