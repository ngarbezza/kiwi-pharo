private
getParserForKeywordWithColon: aKeywordIdentifier

	^((self getKeywordsFor: aKeywordIdentifier) collect: [ :kw | kw , ':' ])
		inject: PPFailingParser new
		into: [ :parser :kw | parser / kw asParser ]