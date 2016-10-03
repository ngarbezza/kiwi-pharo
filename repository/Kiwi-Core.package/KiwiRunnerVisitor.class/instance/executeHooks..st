hooks
executeHooks: pragmaName

	stepDefinitions keysAndValuesDo: [ :className :currentInstance |
		(Pragma allNamed: pragmaName in: (Smalltalk at: className)) do: [ :pragma |
			currentInstance
				ifNil: [ (Smalltalk at: className) new perform: pragma selector ]
				ifNotNil: [ currentInstance perform: pragma selector ]
		]
	]