as yet unclassified
reloadCss
  "SAFileLibrary reloadCss"

  self
    recursivelyAddAllFilesIn: self distDirectory , '/css'
    relativeToRootDirectory: self distDirectory