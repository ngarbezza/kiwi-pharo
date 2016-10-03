placeholder processing
hasPlaceholder: name

	^self body includesSubstring: '<' , name , '>'