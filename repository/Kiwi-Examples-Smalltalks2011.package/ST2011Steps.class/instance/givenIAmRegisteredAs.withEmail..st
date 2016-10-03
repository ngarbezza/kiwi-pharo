given steps
givenIAmRegisteredAs: name withEmail: email

	<given: 'I am registered as "([^"]*)" with email "([^"]*)"'>
	
	"Reusing step definitions by calling them"
	self givenIGiveMyName: name.
	self givenIGiveMyEmail: email.
	self whenITryToRegister.