accessing
featureContent: aString

	[^FileStream fileNamed: self path do: [ :stream | stream nextPutAll: aString ]]
		on: FileDoesNotExistException
		do: [ :exc | KiwiError signal: 'The file ' , self path , ' does not exist']