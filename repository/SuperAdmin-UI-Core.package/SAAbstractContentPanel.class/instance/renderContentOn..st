rendering
renderContentOn: canvas
  canvas section
    class: 'content-header';
    with: [ 
          self
            renderHeadingOn: canvas;
            renderBreadcrumbOn: canvas ].
  canvas section
    class: 'content';
    with: [ self renderAdminContentOn: canvas ]