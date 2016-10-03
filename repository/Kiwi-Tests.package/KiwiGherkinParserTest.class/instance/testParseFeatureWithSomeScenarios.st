features parsing
testParseFeatureWithSomeScenarios

	|featureAst|
	featureAst := parser feature parse:
	'Feature: some title
		Scenario Outline: aaabbb
		Scenario: xxxx
		Scenario: yyyy'.
	
	featureAst isPetitFailure should be: false.
	featureAst scenarios size should be: 3.