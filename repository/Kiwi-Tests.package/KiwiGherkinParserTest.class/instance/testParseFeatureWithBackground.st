features parsing
testParseFeatureWithBackground

	|featureAst|
	featureAst := parser feature parse:
	'Feature: some title
		Background: xxxx'.
	
	featureAst isPetitFailure should be: false.
	featureAst background should be an instance of: KiwiBackgroundASTNode.