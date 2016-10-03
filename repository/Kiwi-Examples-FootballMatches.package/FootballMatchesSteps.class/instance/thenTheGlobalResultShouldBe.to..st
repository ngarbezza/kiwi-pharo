then steps
thenTheGlobalResultShouldBe: scoreA to: scoreB
	<then: 'the global score should be (\d)+-(\d)+'>

	match globalScore should equal: scoreA, '-', scoreB.