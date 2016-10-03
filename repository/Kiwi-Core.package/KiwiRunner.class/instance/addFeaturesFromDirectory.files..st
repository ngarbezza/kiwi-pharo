actions
addFeaturesFromDirectory: aDirectoryPath files: aCollectionOfFileNames

	aCollectionOfFileNames do: [ :fileName | self addFeatureFromDirectory: aDirectoryPath file: fileName ].