private
createResultsCounterFor: aSymbol

	^(builder newRow: {
		(builder
			newLabelFor: self
			label: (self perform: #counterLabel: with: aSymbol)
			getEnabled: nil)
	}) fillStyle: (SolidFillStyle color: (self perform: (aSymbol, #Color) asSymbol));
	layoutInset: 5