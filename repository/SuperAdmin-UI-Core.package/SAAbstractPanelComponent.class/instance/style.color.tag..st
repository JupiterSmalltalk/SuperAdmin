rendering-colors
style: cssStyleAttribute color: aColorOrStringOrSymbol tag: tagBrush
  aColorOrStringOrSymbol
    ifNotNil: [ 
      aColorOrStringOrSymbol isSymbol
        ifTrue: [ tagBrush perform: aColorOrStringOrSymbol ]
        ifFalse: [ 
          tagBrush
            style:
              (String
                streamContents: [ :stream | 
                  stream
                    nextPutAll: cssStyleAttribute;
                    nextPut: $:;
                    nextPutAll:
                        (aColorOrStringOrSymbol isColor
                            ifTrue: [ aColorOrStringOrSymbol asHTMLColor ]
                            ifFalse: [ aColorOrStringOrSymbol ]) ]) ] ]