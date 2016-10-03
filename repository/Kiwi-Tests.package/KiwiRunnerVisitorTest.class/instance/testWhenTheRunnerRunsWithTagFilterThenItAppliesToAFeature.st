running
testWhenTheRunnerRunsWithTagFilterThenItAppliesToAFeature

	| featureNotFiltered featureFiltered |
	featureNotFiltered := KiwiFeatureASTNode new
		tagGroup: (KiwiTagGroupASTNode new tags: #('tagX')).
	featureFiltered := KiwiFeatureASTNode new
		tagGroup: (KiwiTagGroupASTNode new tags: #('tagY')).
	
	runner tagFilter: (KiwiIncludeTagRule new tagName: 'tagY').
	runner visitFeature: featureNotFiltered; visitFeature: featureFiltered.
	
	runner results totalFeatures should be: 1.