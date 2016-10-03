private
setFeatureInSmalltalkImage

	self isFeatureInSmalltalkImage ifFalse:
		[ featureToAdd := KiwiFeatureFromMethod class: classSelected name method: methodSelected ].
	self option: #featureInSmalltalkImage.