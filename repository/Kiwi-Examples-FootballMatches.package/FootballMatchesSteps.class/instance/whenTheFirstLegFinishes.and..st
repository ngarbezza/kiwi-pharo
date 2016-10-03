when steps
whenTheFirstLegFinishes: scoreA and: scoreB
	<when: 'the first leg finishes (\d)+-(\d)+'>

	"Kiwi pass all arguments as strings"
	match firstLegResult: scoreA asInteger to: scoreB asInteger.