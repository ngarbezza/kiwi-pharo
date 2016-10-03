checking status
isFailed

	^self isPending not & self isUndefined not
		and: [ self children anySatisfy: #isFailed ]