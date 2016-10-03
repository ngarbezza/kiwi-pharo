running
testBackgroundIsPresent

	(KiwiFeatureASTNode new background: KiwiBackgroundASTNode new)
		isBackgroundPresent should be: true.
