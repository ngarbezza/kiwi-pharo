features parsing
testParseFeatureWithComments

	|featureAst|
	featureAst := parser feature parse:
	'# this is a comment
	# and this too
	Feature: some title
	some description'.
	
	featureAst isPetitFailure should be: false.
	featureAst comment lines notEmpty should be: true.