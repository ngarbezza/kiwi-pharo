private
searchMethodOfFeature

	|choices|
	choices := (classSelected allMethods select: [ :m | m methodClass = classSelected ]) collect: #selector.
	
	methodSelected := (OBCompletionDialog openOn: (
		OBCompletionRequest new
			collection: choices caseSensitive: false;
			prompt: 'Select a method containing the feature'
		)
	) answer.
	
	methodSelected ifNotNil: [
		methodSelectedLabel contents: methodSelected asString.
		featureToAdd featureMethod: methodSelected.
	].