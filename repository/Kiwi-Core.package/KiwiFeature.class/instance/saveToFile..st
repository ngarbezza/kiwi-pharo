conversion
saveToFile: aFilePath

	^(KiwiFeatureFromFile path: aFilePath)
		featureContent: self featureContent;
		yourself