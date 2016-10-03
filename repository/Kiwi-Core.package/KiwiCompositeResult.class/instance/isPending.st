checking status
isPending

	^self isUndefined not and: [ self children anySatisfy: #isPending ]