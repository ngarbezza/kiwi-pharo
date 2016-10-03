private
generateScenarios

	scenarios := self examplesSections inject: OrderedCollection new into: [ :result :section |
		result addAll: (section table rows withIndexCollect: [ :row :index |
			KiwiScenarioASTNode new
				title: ('{1} (generated scenario #{2})' format: {self title. index printString.});
				description: self description;
				steps: (self generateStepsFor: row headers: section table headers)]).
		result].