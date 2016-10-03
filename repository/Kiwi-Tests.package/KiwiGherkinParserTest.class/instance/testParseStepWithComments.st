steps parsing
testParseStepWithComments

	(parser step parse: 
		'# comment
		Given xxxx'
	) comment lines notEmpty should be: true.