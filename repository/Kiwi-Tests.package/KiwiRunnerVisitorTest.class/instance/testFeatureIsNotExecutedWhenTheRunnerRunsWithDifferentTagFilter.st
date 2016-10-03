running
testFeatureIsNotExecutedWhenTheRunnerRunsWithDifferentTagFilter

	|feature|
	feature := KiwiFeatureASTNode new.
	
	runner tagFilter: (KiwiIncludeTagRule new tagName: 'tag1').
	runner visitFeature: feature.
	
	runner results totalFeatures should be: 0