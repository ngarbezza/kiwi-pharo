private
getKeywordsFor: aKeywordIdentifier

	|result|
	result := KiwiInternationalization
		getKeyword: aKeywordIdentifier
		fromLanguage: self language.
	^result isString ifTrue: [ result := Array with: result ] ifFalse: [ result ]