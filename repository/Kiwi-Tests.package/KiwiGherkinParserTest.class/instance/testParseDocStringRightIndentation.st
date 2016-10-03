other parsers
testParseDocStringRightIndentation

	| oneTab twoSpaces |
	oneTab := parser multilineArgument parse: 
'
	"""
	simple
	string
		one tab here
	"""'.
	twoSpaces := parser multilineArgument parse:
'
  """
  simple
  string
    two more spaces here
  """'.	
	
	oneTab content should equal:
'simple
string
	one tab here'.
	
	twoSpaces content should equal:
'simple
string
  two more spaces here'