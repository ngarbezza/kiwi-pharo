parser definitions
background
	
	^self comment trim
	, self backgroundKeyword trim
	, self untilEndOfLine
	, self untilKeyword trim
	, self steps