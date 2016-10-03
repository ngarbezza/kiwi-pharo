private
searchMethodOfFeature

	|choices request compositeRequest|
	choices := (classSelected allMethods select: [ :m | m methodClass = classSelected ]) collect: #selector.

request := (GLMSingleSpotterRequest new
				collection: choices caseSensitive: false;
				prompt: 'Select a method containing the feature').
compositeRequest := GLMSpotterRequest new prompt: 'Select a method containing the feature'; add:request.
	methodSelected := (GLMMorphicSpotter openOn: compositeRequest 
				) answer.	
	methodSelected ifNotNil: [
		methodSelectedLabel contents: methodSelected asString.
		featureToAdd featureMethod: methodSelected.
	].