then steps
thenTheCalculatorDoesNotReturn: value

	<then: 'the calculator does not return (\d*)'>
	
	calculator result should not equal: value