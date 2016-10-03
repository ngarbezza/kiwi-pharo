accessing
profileAt: profileName

	^self new perform: (self allProfilePragmas
		detect: [ :pragma | pragma arguments first = profileName ]
		ifNone: [ KiwiError signal: 'Could not find a profile named ' , profileName ]) selector