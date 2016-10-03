placeholder processing
hasPlaceholder: name

	^self body includesSubString: '<' , name , '>'