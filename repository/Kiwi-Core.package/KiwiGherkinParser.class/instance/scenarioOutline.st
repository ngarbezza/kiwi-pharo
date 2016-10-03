parser definitions
scenarioOutline

	^super scenarioOutline ==> [ :tokens |
		KiwiScenarioOutlineASTNode new
			title: tokens fourth;
			description: tokens fifth trimBoth;
			comment: tokens first;
			tagGroup: tokens second;
			steps: tokens sixth;
			examplesSections: tokens seventh;
			generateScenarios.
	]