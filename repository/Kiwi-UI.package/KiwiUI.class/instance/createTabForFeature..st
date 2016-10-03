private
createTabForFeature: aFeature

	| featureTextEditor featureTabLabel |
	featureTextEditor := builder
			newTextEditorFor: aFeature
			getText: #featureContent
			setText: #featureContent:.
	featureTabLabel :=  builder newRow: {
		builder newLabel: aFeature featureName.
	 	builder
			newCloseControlFor: nil
			action: [
				(builder confirm: 'Remove the feature from this configuration?') ifTrue: [
					featuresTabGroup removePage: featureTextEditor.
					runner removeFeature: featureTextEditor model.
					self updateFeatureButtons.
				]
			] help: 'Removes this feature from the runner'
	}.
	featuresTabGroup addPage: featureTextEditor label: featureTabLabel.
	featuresTabGroup selectedPageIndex: (featuresTabGroup pages indexOf: featureTextEditor).
	featureTextEditor setText: aFeature featureContent.
	self updateFeatureButtons.