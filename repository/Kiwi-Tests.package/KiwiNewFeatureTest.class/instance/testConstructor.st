as yet unclassified
testConstructor

	| feature |
	feature :=  KiwiNewFeature content: 'feature ... '.
	feature featureContent should equal: 'feature ... '.
	feature featureContent: 'xxx'.
	feature featureContent should equal: 'xxx'.