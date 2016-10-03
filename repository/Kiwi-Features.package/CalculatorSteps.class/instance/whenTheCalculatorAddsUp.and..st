when steps
whenTheCalculatorAddsUp: number1 and: number2

	<when: 'the calculator adds up "*([^"]*)"* and "*([^"]*)"*'>
	
	calculator compute: #+ between: number1 asNumber and: number2 asNumber