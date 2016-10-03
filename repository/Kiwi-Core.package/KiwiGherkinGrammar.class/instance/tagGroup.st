parser definitions
tagGroup
	
	^#space asParser star
	, (self tag , #space asParser plus) star