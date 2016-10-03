accessing
featureFilePath

	^(featureToAdd isNil | self isFeatureInFileSystem not)
		ifTrue: [ '' ]
		ifFalse: [ featureToAdd path ]