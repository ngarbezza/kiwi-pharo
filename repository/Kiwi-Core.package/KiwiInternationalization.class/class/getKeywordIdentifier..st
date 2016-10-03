accessing
getKeywordIdentifier: aKeyword
	
	self availableLanguages do:  [ :lang | | kwID |
		kwID := self keywordIdentifiers detect: [ :kw | | ks |
			ks := self getKeyword: kw fromLanguage: lang.
			(ks isArray and: [ ks includes: aKeyword ]) | (ks isString and: [ ks = aKeyword ])
		] ifNone: [].
		kwID notNil ifTrue: [ ^kwID ]
	].
	KiwiError signal: 'Could not find a keyword identifier. ''' , aKeyword , ''' is not a Gherkin keyword.'