given steps
givenAScenarioWith: content

	<given: 'a scenario with\:'>

	scenario := KiwiScenarioASTNode new
		title: 'some scenario';
		steps: (KiwiGherkinParser english steps parse: content)