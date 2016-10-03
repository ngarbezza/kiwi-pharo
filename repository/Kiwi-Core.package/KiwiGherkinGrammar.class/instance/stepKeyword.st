parser definitions
stepKeyword

	^#(given when then and but) inject: PPFailingParser new into: [ :parser :symbol | 
		parser / (self getParserForKeyword: symbol)
	]