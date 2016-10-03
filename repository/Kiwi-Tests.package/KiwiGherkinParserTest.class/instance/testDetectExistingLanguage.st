language detection
testDetectExistingLanguage

	[ parser := KiwiGherkinParser detectingLanguage:
	'# language: es
	Feature: xxx'. ] should not raise: KiwiError.
	
	parser language should be: #es