accessing
scenarioColor

	self result failedScenarios > 0 ifTrue: [ ^Color red ].
	self result pendingScenarios > 0 ifTrue: [ ^Color yellow ].
	self result undefinedScenarios > 0 ifTrue: [ ^Color gray ].
	self result passedScenarios > 0 ifTrue: [ ^Color green ].
	^Color transparent