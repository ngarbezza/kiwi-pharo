private
searchClassOfFeature

	classSelected := (OBCompletionDialog	openOn: (
		OBCompletionRequest new
			collection: Smalltalk allClasses caseSensitive: false;
			prompt: 'Select a class'
		)
	) answer.
	
	classSelected ifNotNil: [
		classSelectedLabel contents: classSelected asString.
		featureToAdd featureClass: classSelected name.
	].