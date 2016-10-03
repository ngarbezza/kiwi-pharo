actions
runSelectedFeature 
	
	self handleRun: [
		self openResultsWindow: (self runner runFeature: self currentFeature)
	]