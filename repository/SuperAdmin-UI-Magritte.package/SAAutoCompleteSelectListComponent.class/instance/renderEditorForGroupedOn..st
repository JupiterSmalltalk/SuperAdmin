rendering
renderEditorForGroupedOn: html
  html select formControl
    id: self labelId;
    dispatchCallback;
    with: [ self renderGroupsOn: html ]