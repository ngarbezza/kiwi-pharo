parser definitions
feature

	^self comment trim
	, self tagGroup trim
	, self featureKeyword , self untilEndOfLine trim
	, (self scenarioOutline / self scenario / self background)
		negate star flatten trim
	, self background optional
	, self scenarios