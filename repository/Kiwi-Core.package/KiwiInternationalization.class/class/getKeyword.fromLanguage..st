accessing
getKeyword: aKeywordIdentifier fromLanguage: aLanguageSymbol

	^(self perform: aLanguageSymbol) asDictionary at: aKeywordIdentifier