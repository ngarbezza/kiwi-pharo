table parsing
testParseTableTrimLeftAndRightSpaces

	| tableAst |
	tableAst := parser multilineArgument parse: 
'
|    row 1@1  |		row 1@2 |row 1@3|
|     row 2@1|row 2@2|row 2@3|
'.
	(tableAst headers includesAllOf: #('row 1@1' 'row 1@2' 'row 1@3')) should be: true.
	(tableAst rows first includesAllOf: #('row 2@1' 'row 2@2' 'row 2@3' )) should be: true.