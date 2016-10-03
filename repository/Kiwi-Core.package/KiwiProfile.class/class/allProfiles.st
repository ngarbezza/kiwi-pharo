accessing
allProfiles
	
	^self allProfilePragmas collect: [ :pragma | pragma arguments first ]