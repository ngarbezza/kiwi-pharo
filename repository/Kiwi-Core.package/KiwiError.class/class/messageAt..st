accessing
messageAt: aSymbol

	^self messages at: aSymbol ifAbsent: [ 'Unknown error' ]