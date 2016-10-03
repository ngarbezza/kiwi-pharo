processing
trimSpacesUsing: aCollectionOfSeparators
	"Remove the initial spaces of all lines of the content based on aCollectionOfSeparators"

	| spacesToRemove result |
	spacesToRemove := (Character cr split: aCollectionOfSeparators) last size.
	result := ''.
	self content lines do: [ :line |
		| lineProcessed currentLine spacesProcessed |
		spacesProcessed := spacesToRemove.
		lineProcessed := false.
		currentLine := line asOrderedCollection.
		line do: [ :char |
			char isSeparator & lineProcessed not & (spacesProcessed > 0) ifTrue: [
				currentLine :=  currentLine removeFirst; yourself.
				spacesProcessed := spacesProcessed - 1.
				] ifFalse: [ lineProcessed := true ]
			].
		spacesProcessed > 0
			ifTrue: [ spacesProcessed timesRepeat: [ currentLine addFirst: Character space ] ].
		result := result , currentLine , String cr.
	].
	result ifNotEmpty: [ result := result copyFrom: 1 to: result size - 1 ].
	self content: result.
	