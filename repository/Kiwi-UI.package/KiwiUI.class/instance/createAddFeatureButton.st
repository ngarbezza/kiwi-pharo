private
createAddFeatureButton

	^builder
		newButtonFor: self
		action: #openAddFeatureWindow
		label: 'Add feature...'
		help: 'Add a feature to the runner''s list of features'