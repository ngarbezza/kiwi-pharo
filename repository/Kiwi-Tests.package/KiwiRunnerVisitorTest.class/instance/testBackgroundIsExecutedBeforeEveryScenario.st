running
testBackgroundIsExecutedBeforeEveryScenario

	[ :background :scenario1 :scenario2 :scenario3 :feature |
		runner := KiwiRunnerVisitor newStepDefinitionsClasses: #().
		
		[ runner visitFeature: feature ] should lenient satisfy: [
			feature scenarios willReturn: { scenario1. scenario2. scenario3 }.
			(feature isBackgroundPresent willReturn: true) useExactly: 3.
			(feature background willReturn: background) useExactly: 3.
			(scenario1 accept: runner) useOnce.
			(scenario2 accept: runner) useOnce.
			(scenario3 accept: runner) useOnce.
			(background accept: runner) useExactly: 3
		]
		
	] runScenario