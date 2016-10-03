when steps
whenTheSecondLegFinishes: scoreA and: scoreB
	<when: 'the second leg finishes (\d)+-(\d)+'>

	match secondLegResult: scoreA asInteger to: scoreB asInteger.