testing
isKeyword: aKeywordIdentifier fromLanguage: aLanguageSymbol

	self availableLanguages do: [ :lang |
		[self getKeywordIdentifier: aKeywordIdentifier. ^true] on: KiwiError do: [ :e | ]
	].
	^false