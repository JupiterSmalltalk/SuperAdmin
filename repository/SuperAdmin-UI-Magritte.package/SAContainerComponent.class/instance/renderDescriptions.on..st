rendering
renderDescriptions: descriptions on: canvas
  SAFormRenderer
    component: self
    description:
      (self magritteDescription
        select: [ :desc | 
          (descriptions includes: desc)
            or: [ 
              (descriptions includes: desc label)
                or: [ descriptions includes: desc accessor readSelector ] ] ])
    on: canvas