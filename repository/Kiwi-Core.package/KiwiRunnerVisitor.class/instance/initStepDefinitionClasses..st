initialize-release
initStepDefinitionClasses: classNames

	stepDefinitions := (classNames collect: [ :className | className -> nil ]) asDictionary.