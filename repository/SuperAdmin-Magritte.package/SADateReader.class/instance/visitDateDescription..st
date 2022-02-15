visiting-description
visitDateDescription: aDescription
  | string |
  string := self contents.
  (string notEmpty
    and: [ string allSatisfy: [ :each | '0123456789-' includes: each ] ])
    ifFalse: [ MAReadError signal ].
  self object: (Date fromStream: string readStream usingFormat: #(3 2 1 $- 1 1))