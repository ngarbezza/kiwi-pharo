private
createTextView

	^textEditor := builder
		newTextEditorFor: self
		getText: #output
		setText: #output: