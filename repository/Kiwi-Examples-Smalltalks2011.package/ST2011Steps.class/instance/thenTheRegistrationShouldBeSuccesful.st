then steps
thenTheRegistrationShouldBeSuccesful

	<then: 'the registration should be successful'>
	
	"Using Mocketry DSL for the expectations"
	
	conference numberOfAttendees should be: 1.
	(conference isAttending: attendee) should be: true.