visitor methods
visitFeature: aFeature

	(self tagFilter includes: aFeature)
		ifTrue: [ ^self doVisitFeature: aFeature ]