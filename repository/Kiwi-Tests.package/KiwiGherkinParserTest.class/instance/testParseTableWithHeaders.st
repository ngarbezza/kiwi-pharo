table parsing
testParseTableWithHeaders

	| tableAst |
	tableAst := parser multilineArgument parse:
'
|a|b|c|
'.
	(tableAst headers includesAllOf: #('a' 'b' 'c')) should be: true.