my profiles
sample02Profile

	<profile: 'sample 02'>
	
	self featureFromFile: '/path/to/my/project'.
	self featureFromClass: #MyClass method: #myMethod.
	self stepDefinitionsClass: #KiwiTestsSteps.
	self tagFilter: '@tag1 & @tag2'.