accessing
data: aCollection

	| colLengths |
	colLengths := aCollection collect: #size.
	colLengths asSet size = 1 ifFalse: [
		KiwiError signal: 'All rows must have the same length (lengths: ' , colLengths printString , ')'
	].
	data := aCollection.