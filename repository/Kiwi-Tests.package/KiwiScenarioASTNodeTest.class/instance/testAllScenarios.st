as yet unclassified
testAllScenarios

	| scenario |
	scenario := KiwiScenarioASTNode new.
	scenario allScenarios should equal: { scenario }.