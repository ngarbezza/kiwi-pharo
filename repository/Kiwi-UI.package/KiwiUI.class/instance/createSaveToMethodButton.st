private
createSaveToMethodButton

	^builder
		newButtonFor: self
		action: #saveFeatureToMethod
		getEnabled: #disabled
		label: 'Save to method...'
		help: 'Save the current feature to a method in a given class'