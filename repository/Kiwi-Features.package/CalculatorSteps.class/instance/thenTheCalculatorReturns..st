then steps
thenTheCalculatorReturns: result

	<then: 'the calculator returns "([^"]*)"'>

	calculator result should be within: 0.0001 of: result asNumber