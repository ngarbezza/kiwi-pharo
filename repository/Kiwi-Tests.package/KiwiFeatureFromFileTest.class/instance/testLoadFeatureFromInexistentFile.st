feature loading
testLoadFeatureFromInexistentFile

	self should: [ (KiwiFeatureFromFile path: 'xxx') featureContent ] raise: KiwiError.