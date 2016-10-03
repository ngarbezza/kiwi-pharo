registration features
registrationAndProposalsFeature
	^ 'Feature: Smalltalks 2011 registration & proposals
	In order to know cool people and learn a lot about Smalltalk
	As a smalltalker
	I want to assist to the conference
	
	Scenario: Successful registration
		Given the Smalltalks 2011 conference
		And I give my name "Nahuel"
		And I give my email "n.garbezza@gmail.com"
		When I try to register
		Then the registration should be successful
		
	Scenario: Submitting a talk
		Given the Smalltalks 2011 conference
		And I am registered as "Nahuel" with email "n.garbezza@gmail.com"
		When I try to submit the proposal "BDD in Pharo" with the abstract
			"""
			In this talk, we will show an approach for doing
			Behaviour-Driven development in Pharo...
			"""
		Then the proposal should be valid'