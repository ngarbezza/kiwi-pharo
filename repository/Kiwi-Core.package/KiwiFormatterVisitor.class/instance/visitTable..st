visitor methods
visitTable: aTable

	| maxWidths |
	self stream crtab.
	maxWidths := aTable headers collectWithIndex: [ :head :i |
		(aTable raw collect: [ :row | (row at: i) size ]) max
	].
	aTable raw do: [ :row |
		self stream nextPut: $|.
		row doWithIndex: [ :cell :i |
			self stream
				nextPut: Character space;
				nextPutAll: cell;
				nextPutAll: (Array new: (maxWidths at: i) - cell size withAll: Character space);
				nextPut: Character space;
				nextPut: $|
		].
		row = aTable raw last ifFalse: [ self stream cr ].
	].
	self stream indentBack.