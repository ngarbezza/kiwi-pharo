as yet unclassified
testIndent

	| stream |
	stream := IndentStream on: 'xxx'.
	stream indent; indent.
	stream indentLevel should equal: 2.
	