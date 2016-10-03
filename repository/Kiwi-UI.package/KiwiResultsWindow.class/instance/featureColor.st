accessing
featureColor

	self result failedFeatures > 0 ifTrue: [ ^Color red ].
	self result pendingFeatures > 0 ifTrue: [ ^Color yellow ].
	self result undefinedFeatures > 0 ifTrue: [ ^Color gray ].
	self result passedFeatures > 0 ifTrue: [ ^Color green ].
	^Color transparent