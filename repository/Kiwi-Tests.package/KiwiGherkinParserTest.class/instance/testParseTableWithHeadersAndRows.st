table parsing
testParseTableWithHeadersAndRows

	| tableAst |
	tableAst := parser multilineArgument parse: 
'
|a|b|c|
              |d|e|f|
|g|h|i|
'.
	(tableAst headers includesAllOf: #('a' 'b' 'c')) should be: true.
	(tableAst rows first includesAllOf: #('d' 'e' 'f' )) should be: true.
	(tableAst rows second includesAllOf: #('g' 'h' 'i' )) should be: true.