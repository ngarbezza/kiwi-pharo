converting
asString

	^self astNode title
		ifEmpty: [ ^'<Unnamed scenario>' ]
		ifNotEmpty: [ self astNode title ]