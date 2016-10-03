private
createMainWindow

	^builder newColumn: {
		builder newRow: {
			self createAddFeatureButton.
			saveToFileButton := self createSaveToFileButton.
			saveToMethodButton := self createSaveToMethodButton.
		}.
		self createFeaturesTabGroup.
		self createStepDefinitionsPanel vResizing: #shrinkWrap.
		self createTagsPanel vResizing: #shrinkWrap.
		self createMainButtons vResizing: #shrinkWrap.
	}