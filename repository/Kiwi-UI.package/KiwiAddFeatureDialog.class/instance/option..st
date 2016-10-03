accessing
option: anObject

	option := anObject.
	self
		changed: #isNewFeature;
		changed: #isFeatureInSmalltalkImage;
		changed: #isFeatureInFileSystem.