private
getCurrentStepInstance: className
	
	(stepDefinitions at: className)
		ifNil: [ stepDefinitions at: className put: (Smalltalk at: className) new ].
	^stepDefinitions at: className