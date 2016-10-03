running
run

	| runner |
	runner := KiwiRunnerVisitor
		newStepDefinitionsClasses: self stepDefinitionsClasses
		tagFilter: self parsedTagFilter.
	
	self parsedFeatures do: [ :feature | feature accept: runner ].
	^runner results