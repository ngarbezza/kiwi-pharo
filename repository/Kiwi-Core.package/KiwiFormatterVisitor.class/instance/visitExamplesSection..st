visitor methods
visitExamplesSection: anExamplesSection

	self stream nextPutAll: 'Examples:'.
	anExamplesSection table accept: self.