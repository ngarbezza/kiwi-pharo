printing features
testVisitSimpleFeature

	| expectedResult featureAst |
	expectedResult := 'Feature: name
	This is a description'.
	featureAst := KiwiFeatureASTNode new title: 'name'; description: 'This is a description'.
	
	featureAst accept: formatter.
	
	formatter stream contents should equal: expectedResult.