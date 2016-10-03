when steps
whenTheCalculatorAddsUp: value1 and: value2 and: value3

	<when: 'the calculator adds up "([^"]*)", "([^"]*)" and "([^"]*)"'>
	
	calculator compute: #+ between: value1 asNumber and: value2 asNumber.
	calculator compute: #+ between: calculator result and: value3 asNumber.