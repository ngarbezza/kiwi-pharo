parser definitions
step

	^super step ==> [ :tokens |
		KiwiStepASTNode new
			comment: tokens first;
			kind: tokens second;
			body: tokens fourth trimBoth;
			argument: tokens fifth
	]