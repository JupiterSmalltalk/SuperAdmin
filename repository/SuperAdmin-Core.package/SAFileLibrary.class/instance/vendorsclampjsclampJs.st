uploaded metadata
vendorsclampjsclampJs
	^ WAFileLibraryResource
		filepath: 'vendors/clamp.js/clamp.js'
		mimeType: (WAMimeType main: 'application' sub: 'javascript')
		cacheDuration: (Duration days: 0 hours: 0 minutes: 30 seconds: 0)
		contents: (GRDelayedSend receiver: self selector: #vendorsclampjsclampJsContent)