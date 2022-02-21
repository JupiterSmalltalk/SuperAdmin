rendering
renderEditorOn: canvas
  | htmlId |
  htmlId := canvas nextId.
  canvas textInput
    id: htmlId;
    attributeAt: 'data-role' put: 'tagsinput';
    value: self value;
    callback: [ :value | self value: value ]