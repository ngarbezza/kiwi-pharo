visitor methods
visitFeature: aFeature

	aFeature tagGroup ifNotNil: [ aFeature tagGroup accept: self ].
	self stream
		nextPutAll: 'Feature: '; nextPutAll: aFeature title; crtab;
		nextPutAll: aFeature description.
	aFeature scenarios ifNotEmpty: [ 
		self stream cr.
		aFeature description ifNotEmpty: [ self stream cr ]
	].
	aFeature isBackgroundPresent ifTrue: [
		aFeature background accept: self.
		self stream cr; cr.
	].
	aFeature scenarios do: [ :elem |
		elem accept: self.
		aFeature scenarios last = elem ifFalse: [ self stream cr; cr ].
	]