then steps
thenTheProposalShouldBeValid

	<then: 'the proposal should be valid'>
	
	(conference hasAcceptedProposal: proposal) should be: true.