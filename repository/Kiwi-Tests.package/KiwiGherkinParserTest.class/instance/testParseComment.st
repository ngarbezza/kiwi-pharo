comments parsing
testParseComment

	|emptyCommentAst oneLineCommentAst manyLinesCommentAst|
	emptyCommentAst := parser comment parse: ''.
	oneLineCommentAst := parser comment parse: '#I am a comment'.
	manyLinesCommentAst := parser comment parse: 
'# I am a comment
# 		I am a comment, too
	#      Hey, what about me?'.
	
	emptyCommentAst isPetitFailure should be: false.
	oneLineCommentAst isPetitFailure should be: false.
	manyLinesCommentAst isPetitFailure should be: false.
	emptyCommentAst lines isEmpty should be: true.
	oneLineCommentAst lines first should equal: 'I am a comment'.
	manyLinesCommentAst lines first should equal: ' I am a comment'.
	manyLinesCommentAst lines second should equal: ' 		I am a comment, too'.
	manyLinesCommentAst lines third should equal: '      Hey, what about me?'.