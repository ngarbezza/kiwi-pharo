accessing
featureContent

	[ |result|
	result := (Smalltalk at: self featureClass) new perform: self featureMethod.
	result isString ifFalse: [ Error signal ].
	^result ]
		on: Error
		do: [ :e | KiwiError
			signal: 'The method selected does not seem to contain a feature'
		]