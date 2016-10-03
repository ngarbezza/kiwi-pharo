adding results
addFeatureResult: aFeatureASTNode

	^self featureResults add: (KiwiFeatureResult new astNode: aFeatureASTNode)