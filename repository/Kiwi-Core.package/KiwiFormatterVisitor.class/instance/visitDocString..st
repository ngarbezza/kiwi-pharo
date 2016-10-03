visitor methods
visitDocString: aDocString

	self stream crtab; nextPutAll: '"""'; cr.
	aDocString content lines do: [ :line | self stream nextPutAll: line; cr ].
	self stream nextPutAll: '"""'; indentBack.