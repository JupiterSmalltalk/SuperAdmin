utilities
register
  "SARoot register"

  self
    configureApplication:
      (WAAdmin register: self asApplicationAt: self defaultRegistryName)