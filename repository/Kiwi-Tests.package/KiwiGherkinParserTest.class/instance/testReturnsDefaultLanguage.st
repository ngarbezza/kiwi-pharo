language detection
testReturnsDefaultLanguage

	parser := KiwiGherkinParser detectingLanguage: 'Feature: xxx'.
	parser language should be: KiwiInternationalization defaultLanguage