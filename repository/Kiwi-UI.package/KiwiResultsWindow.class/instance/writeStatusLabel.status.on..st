private
writeStatusLabel: aSymbol status: status on: aStream

	|statusResult|
	statusResult := self result perform: (status , aSymbol capitalized , #s) asSymbol.
	statusResult > 0 ifTrue: [
		aStream
			nextPutAll: statusResult printString;
			nextPut: Character space;
			nextPutAll: status asString;
			nextPut: Character space.
	]