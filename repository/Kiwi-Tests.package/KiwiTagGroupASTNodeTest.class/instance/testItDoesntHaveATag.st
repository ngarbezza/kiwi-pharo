as yet unclassified
testItDoesntHaveATag

	| tagGroup |
	tagGroup := KiwiTagGroupASTNode new.
	
	(tagGroup hasTag: 'tag1') should be: false.