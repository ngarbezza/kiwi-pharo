parser definitions
scenarioOutline

	^self comment trim
	, self tagGroup
	, self scenarioOutlineKeyword trim , self untilEndOfLine
	, self untilKeyword trim
	, self steps
	, self examplesSections trim