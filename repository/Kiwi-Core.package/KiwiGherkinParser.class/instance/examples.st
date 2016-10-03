parser definitions
examples

	^super examples ==> [ :tokens |
		KiwiExamplesSectionASTNode new
			comment: tokens first;
			table: tokens fourth
	]