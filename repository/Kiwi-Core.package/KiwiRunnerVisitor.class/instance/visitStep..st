visitor methods
visitStep: aStep

	| stepPragma matchingStepClass stepResult |
	stepResult := self results addStepResult: aStep.
	
	"Search for a step definition in all the classes with steps"
	matchingStepClass := self stepDefinitionsClasses
		detect: [ :className | (self getPragmaOn: className forStep: aStep) notNil ]
		"If there's no matches, the step is considered undefined"
		ifNone: [ ^stepResult setUndefined ].

	stepPragma := self getPragmaOn: matchingStepClass forStep: aStep.
	
	"If the step has a matching definition, but is part of a non-passed scenario, it is marked as skipped"
	self results skipStepsInScenario
		ifTrue: [ ^stepResult setSkippedWith: stepPragma method ].
	
	"If the matching step method has the <pending> pragma, is considered as pending"
	(stepPragma method pragmaAt: #pending)
		ifNotNil: [ ^stepResult setPendingWith: stepPragma method ].
	
	"The step is neither pending nor undefined, so it should be performed"
	[(self getCurrentStepInstance: matchingStepClass)
		perform: stepPragma selector
		withArguments: (aStep getArgumentsFrom: stepPragma)
	] on: Error do: [ :err | ^stepResult setFailedWith: stepPragma method andError: err ].

	"If there was no errors, the step is considered passed"
	^stepResult setPassedWith: stepPragma method