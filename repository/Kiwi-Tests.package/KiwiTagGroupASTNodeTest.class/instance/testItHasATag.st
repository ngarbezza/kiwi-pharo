as yet unclassified
testItHasATag

	| tagGroup |
	tagGroup := KiwiTagGroupASTNode new tags: #('tag1' 'tag2').
	
	(tagGroup hasTag: 'tag1') should be: true.
	(tagGroup hasTag: 'tag2') should be: true.