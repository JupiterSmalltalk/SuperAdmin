uploaded metadata
vendorsdatatablesdatatablesbuttonsbuttonscolVisminJs
	^ WAFileLibraryResource
		filepath: 'vendors/datatables/datatables-buttons/buttons.colVis.min.js'
		mimeType: (WAMimeType main: 'application' sub: 'javascript')
		cacheDuration: (Duration days: 0 hours: 0 minutes: 30 seconds: 0)
		contents: (GRDelayedSend receiver: self selector: #vendorsdatatablesdatatablesbuttonsbuttonscolVisminJsContent)