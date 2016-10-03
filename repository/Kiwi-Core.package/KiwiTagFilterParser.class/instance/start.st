accessing
start

	^super start ==> [ :result |
		result isString
			ifTrue: [ KiwiNoTagsRule new ]
			ifFalse: [ result ]
	]