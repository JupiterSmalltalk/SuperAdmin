uploaded metadata
vendorsfullcalendartimegridmainJs
	^ WAFileLibraryResource
		filepath: 'vendors/fullcalendar/timegrid/main.js'
		mimeType: (WAMimeType main: 'application' sub: 'javascript')
		cacheDuration: (Duration days: 0 hours: 0 minutes: 30 seconds: 0)
		contents: (GRDelayedSend receiver: self selector: #vendorsfullcalendartimegridmainJsContent)