when steps
whenISubmitTheProposal: proposalTitle withTheAbstract: abstract

	<when: 'I try to submit the proposal "([^"]*)" with the abstract'>
	
	proposal := ST2011Proposal title: proposalTitle abstract: abstract speaker: attendee.
	conference submitProposal: proposal.