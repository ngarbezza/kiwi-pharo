table parsing
testParseTableRawData

	| tableAst |
	tableAst := parser multilineArgument parse: 
'
|a|b|c|
|d|e|f|
|g|h|i|
'.
	(tableAst raw first includesAllOf: #('a' 'b' 'c')) should be: true.
	(tableAst raw second includesAllOf: #('d' 'e' 'f' )) should be: true.
	(tableAst raw third includesAllOf: #('g' 'h' 'i' )) should be: true.