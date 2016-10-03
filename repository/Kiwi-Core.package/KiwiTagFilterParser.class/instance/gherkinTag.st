parsers
gherkinTag
	
	^super gherkinTag ==> [ :tokens | KiwiIncludeTagRule new tagName: tokens second ]