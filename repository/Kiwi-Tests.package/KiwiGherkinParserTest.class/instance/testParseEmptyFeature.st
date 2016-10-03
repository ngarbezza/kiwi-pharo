features parsing
testParseEmptyFeature

	|featureAst|
	featureAst := parser feature parse:
	'Feature: some title
	some description'.
	
	featureAst isPetitFailure should be: false.
	featureAst title should equal: 'some title'.
	featureAst description should equal: 'some description'.
	featureAst comment lines isEmpty should be: true.
	featureAst tagGroup tags isEmpty should be: true.
	featureAst background isNil should be: true.
	featureAst scenarios isEmpty should be: true.