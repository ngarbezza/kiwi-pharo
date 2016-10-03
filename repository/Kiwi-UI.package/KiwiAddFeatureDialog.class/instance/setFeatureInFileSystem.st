private
setFeatureInFileSystem

	self isFeatureInFileSystem ifFalse: [ featureToAdd := KiwiFeatureFromFile path: featureFilePath ].
	self option: #featureInFileSystem.