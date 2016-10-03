parser definitions
scenario

	^super scenario ==> [ :tokens |
		KiwiScenarioASTNode new
			comment: tokens first;
			tagGroup: tokens second;
			title: tokens fifth;
			description: tokens sixth trimBoth;
			steps: tokens seventh
	]