features parsing
testParseFeatureWithTags

	|featureAst|
	featureAst := parser feature parse:
	'@tag1 @tag2
	@tag3
	Feature: some title
	some description'.
	
	featureAst isPetitFailure should be: false.
	featureAst tagGroup tags size should be: 3.