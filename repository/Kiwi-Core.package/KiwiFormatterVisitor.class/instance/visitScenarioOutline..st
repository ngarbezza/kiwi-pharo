visitor methods
visitScenarioOutline: aScenarioOutline
	
	self visitScenario: aScenarioOutline.
	
	aScenarioOutline examplesSections do: [ :section |
		section = aScenarioOutline examplesSections first
			ifTrue: [ self stream crtab ] ifFalse: [ self stream cr ].
		self stream cr.
		section accept: self.
	].
	self stream indentBack.