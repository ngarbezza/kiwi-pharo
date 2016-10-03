printing arguments
testPrintMultilineString

	|string|
	string := KiwiDocStringASTNode new content:
'Line 1
	Line 2
Line 3
'.
	string accept: formatter.
	formatter stream contents should equal:
'
	"""
	Line 1
		Line 2
	Line 3
	"""'