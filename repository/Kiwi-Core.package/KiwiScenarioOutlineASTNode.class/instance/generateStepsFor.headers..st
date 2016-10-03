private
generateStepsFor: aValuesRow headers: headers
	
	|stepsGenerated|
	stepsGenerated := Array new: self steps size.
	self steps deepCopy withIndexDo: [ :step :index |
		headers do: [ :head |
			(step hasPlaceholder: head) ifTrue: [
				step replacePlaceholder: head withValue: (aValuesRow at: index).
			]
		].
		stepsGenerated at: index put: step.
	].
	^stepsGenerated