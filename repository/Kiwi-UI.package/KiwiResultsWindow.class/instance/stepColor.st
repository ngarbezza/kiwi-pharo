accessing
stepColor

	self result failedSteps > 0 ifTrue: [ ^Color red ].
	self result pendingSteps > 0 ifTrue: [ ^Color yellow ].
	self result undefinedSteps > 0 ifTrue: [ ^Color gray ].
	self result passedSteps > 0 ifTrue: [ ^Color green ].
	self result skippedSteps > 0 ifTrue: [ ^Color cyan ].
	^Color transparent