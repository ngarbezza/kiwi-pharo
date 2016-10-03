printing features
testFormatFeatures

	[ :feature1 :feature2 |
		[formatter formatFeatures: { feature1. feature2 }] should lenient satisfy: [
			(feature1 accept: formatter) will: [ formatter stream nextPutAll: 'feature 1' ].
			(feature2 accept: formatter) will: [ formatter stream nextPutAll: 'feature 2' ].
		]
	] runWithMocks.

	formatter stream contents should equal:
'feature 1

feature 2'