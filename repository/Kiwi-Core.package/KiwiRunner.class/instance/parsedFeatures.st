private
parsedFeatures

	^self features collect: [ :f | self parseFeature: f featureContent ]