private
getParserForKeyword: aKeywordIdentifier

	^(self getKeywordsFor: aKeywordIdentifier)
		inject: PPFailingParser new
		into: [ :parser :kw | parser / kw asParser ]
