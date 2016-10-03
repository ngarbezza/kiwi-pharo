tags parsing
testParseTagGroup

	|tagGroupAst|
	tagGroupAst := parser tagGroup parse: 
'@tag1 @tag2
@tag3
	@tag4 '.
	
	tagGroupAst tags should equal: #('tag1' 'tag2' 'tag3' 'tag4').