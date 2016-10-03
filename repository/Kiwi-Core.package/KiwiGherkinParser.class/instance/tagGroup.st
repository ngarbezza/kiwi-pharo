parser definitions
tagGroup

	^super tagGroup ==>
		[ :tokens | KiwiTagGroupASTNode new tags: (tokens second collect: #first) ]