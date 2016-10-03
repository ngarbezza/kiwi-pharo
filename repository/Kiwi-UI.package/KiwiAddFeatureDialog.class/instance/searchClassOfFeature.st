private
searchClassOfFeature
| request compositeRequest|


request := (GLMSingleSpotterRequest new
				collection: Smalltalk allClasses;
				prompt: 'Select a class').
compositeRequest := GLMSpotterRequest new prompt: 'Select a class'; add:request.
	classSelected := (GLMMorphicSpotter openOn: compositeRequest 
			) answer.
	classSelected
		ifNotNil: [ classSelectedLabel contents: classSelected asString.
			featureToAdd featureClass: classSelected name ]