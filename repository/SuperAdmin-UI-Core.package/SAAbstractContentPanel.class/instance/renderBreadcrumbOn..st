rendering
renderBreadcrumbOn: canvas
  canvas tbsBreadcrumb
    with: [ 
      self pathToRoot
        do: [ :pathItem | self renderBreadcrumbItem: pathItem on: canvas ] ]