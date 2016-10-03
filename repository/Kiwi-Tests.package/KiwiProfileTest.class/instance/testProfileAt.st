as yet unclassified
testProfileAt

	| runner |
	runner := (KiwiProfileExample profileAt: 'sample 02') runner.
	
	runner features size should be: 2.
	runner stepDefinitionsClasses size should be: 1.
	runner tagFilter should equal: '@tag1 & @tag2'.