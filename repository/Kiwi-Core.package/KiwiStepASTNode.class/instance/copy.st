copying
copy

	^self class new
		comment: self comment copy;
		kind: self kind copy;
		body: self body copy;
		argument: self argument copy;
		yourself