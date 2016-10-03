visitor methods
visitElement: elem withSteps: kw

	| isNecessaryToIndent |
	self stream nextPutAll: kw; nextPutAll: elem title.
	isNecessaryToIndent := elem description notEmpty | elem steps notEmpty.
	isNecessaryToIndent ifTrue: [ self stream crtab ].
	elem description ifNotEmpty: [ self stream nextPutAll: elem description ].
	elem steps ifNotEmpty: [
		self stream cr.
		elem description ifNotEmpty: [ self stream cr ].
	].
	elem steps do: [ :step |
		step accept: self.
		elem steps last = step ifFalse: [ self stream cr ].
	].
	isNecessaryToIndent ifTrue: [ self stream indentBack ].