private
replaceFeature: oldFeature with: newFeature

	featuresTabGroup selectedPageIndex: 0.
	runner removeFeature: oldFeature.
	featuresTabGroup removePage: (featuresTabGroup pages detect: [ :p | p model == oldFeature ]).
	runner addFeature: newFeature.
	self createTabForFeature: newFeature.