private
counterLabel: aSymbol

	| total out |
	total := self result perform: (#total , aSymbol capitalized , #s) asSymbol.
	out := WriteStream on: ''.
	out
		nextPutAll: total printString;
		nextPut: Character space;
		nextPutAll: aSymbol asString.
	total = 1 ifFalse: [ out nextPut: $s ].
	total > 0 ifFalse: [ ^out contents ].
	out nextPut: Character space;	nextPut: $(; nextPut: Character space.
	#(passed failed pending undefined skipped)
		do: [ :status | self writeStatusLabel: aSymbol status: status on: out ].
	out nextPut: $).
	
	^out contents