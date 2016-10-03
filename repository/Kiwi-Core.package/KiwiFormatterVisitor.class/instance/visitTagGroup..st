visitor methods
visitTagGroup: aTagGroup 

	aTagGroup tags do: [ :tag |
		self stream nextPut: $@; nextPutAll: tag; cr
	]