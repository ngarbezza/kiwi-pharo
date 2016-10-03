accessing
featureContent

	[^FileStream readOnlyFileNamed: self path do: [ :stream | stream contents ]]
		on: FileDoesNotExistException do: [ :exc | KiwiError signal: 'The file ' , self path , ' does not exist']