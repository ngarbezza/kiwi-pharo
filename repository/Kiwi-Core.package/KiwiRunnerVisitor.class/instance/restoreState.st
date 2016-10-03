private
restoreState
	"Clear all instances created to keep the state within a scenario"
	
	self
		initStepDefinitionClasses: self stepDefinitionsClasses;
		tagFilter: self tagFilter;
		results: self results.