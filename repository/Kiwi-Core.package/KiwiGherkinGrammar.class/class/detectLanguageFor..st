instance creation
detectLanguageFor: featureContent

	(featureContent beginsWith: self languageDeclaration)
		ifTrue: [ | lang |
			lang := ('\s' asRegex split: (self languageDeclaration split: featureContent) second) first asSymbol.
			(KiwiInternationalization supportLanguage: lang)
				ifTrue: [^lang]
				ifFalse: [KiwiError signal: 'Language "' , lang asString , '" is not supported by Kiwi']]
		ifFalse: [ ^KiwiInternationalization defaultLanguage ]

