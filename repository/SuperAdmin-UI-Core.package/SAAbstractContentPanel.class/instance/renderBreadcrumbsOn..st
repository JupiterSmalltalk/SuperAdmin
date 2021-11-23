rendering
renderBreadcrumbsOn: canvas
  canvas breadcrumb
    with: [ 
      self pathToRoot
        do: [ :pathItem | self renderBreadcrumbItem: pathItem on: canvas ] ]