language detection
testFailsDetectingNonExistingLanguage

	[ parser := KiwiGherkinParser detectingLanguage:
	'# language: klingon
	Feature: xxx'. ] should raise: KiwiError.