when steps
whenITryToRegister

	<when: 'I try to register'>

	attendee := ST2011Attendee name: attendeeName email: attendeeEmail.
	conference registerAttendee: attendee.