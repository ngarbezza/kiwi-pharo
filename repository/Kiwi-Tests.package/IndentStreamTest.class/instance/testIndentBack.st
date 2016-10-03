as yet unclassified
testIndentBack

	| stream |
	stream := IndentStream on: 'xxx'.
	stream indent; indent.
	stream indentBack.
	stream indentLevel should equal: 1.
	