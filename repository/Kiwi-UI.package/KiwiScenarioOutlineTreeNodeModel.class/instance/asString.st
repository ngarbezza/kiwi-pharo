converting
asString

	^self item title
		ifEmpty: [ ^'<Unnamed scenario outline>' ]
		ifNotEmpty: [ self item title ]