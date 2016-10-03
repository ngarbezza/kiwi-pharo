registration features
registrationFeature
	^ 'Feature: Smalltalks 2011 registration
	In order to know cool people and learn a lot about Smalltalk
	As a smalltalker
	I want to assist to the conference
	
	Scenario: Successful registration
		Given the Smalltalks 2011 conference
		And I give my name "Nahuel"
		And I give my email "n.garbezza@gmail.com"
		When I try to register
		Then the registration should be successful'