parser definitions
multilineArgument

	^super multilineArgument ==> [ :tokens | 
		tokens third trimSpacesUsing: tokens second.
		tokens third.
	]