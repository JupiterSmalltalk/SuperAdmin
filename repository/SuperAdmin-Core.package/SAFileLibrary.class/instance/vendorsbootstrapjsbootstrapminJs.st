uploaded metadata
vendorsbootstrapjsbootstrapminJs
	^ WAFileLibraryResource
		filepath: 'vendors/bootstrap/js/bootstrap.min.js'
		mimeType: (WAMimeType main: 'application' sub: 'javascript')
		cacheDuration: (Duration days: 0 hours: 0 minutes: 30 seconds: 0)
		contents: (GRDelayedSend receiver: self selector: #vendorsbootstrapjsbootstrapminJsContent)