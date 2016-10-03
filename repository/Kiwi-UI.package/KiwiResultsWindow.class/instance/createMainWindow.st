private
createMainWindow

	^builder newColumn: {
		self createResultsCounterFor: #feature.
		self createResultsCounterFor: #scenario.
		self createResultsCounterFor: #step.
		(builder newRow: {
			self createTreeView.
			self createTextView.
		}) vResizing: #spaceFill; yourself.
		self createBottomButtons.
	}