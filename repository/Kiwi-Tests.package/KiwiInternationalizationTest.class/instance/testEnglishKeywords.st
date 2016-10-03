keywords internationalization
testEnglishKeywords

	#('Given' 'When' 'Then' 'And' 'But' 'Background' 'Scenario' 'Feature' 'Scenario Outline' 'Examples' 'Scenarios')
		do: [ :kw | self assert: (KiwiInternationalization isKeyword: kw fromLanguage: #en) ]