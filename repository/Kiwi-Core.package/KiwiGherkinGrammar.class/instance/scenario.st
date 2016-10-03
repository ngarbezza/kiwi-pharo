parser definitions
scenario

	^self comment
	, self tagGroup trim
	, self scenarioKeyword , #blank asParser star , self untilEndOfLine
	, self untilKeyword trim
	, self steps