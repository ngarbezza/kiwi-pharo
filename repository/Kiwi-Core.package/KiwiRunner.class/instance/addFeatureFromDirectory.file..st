actions
addFeatureFromDirectory: aDirectoryPath file: aFileName

	self addFeatureFromPath: ((aDirectoryPath endsWith: #/) ifTrue: [ aDirectoryPath ] ifFalse: [ aDirectoryPath , '/' ]) , aFileName