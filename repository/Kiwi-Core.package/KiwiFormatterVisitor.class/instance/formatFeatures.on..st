actions
formatFeatures: features on: anIndentStream

	stream := anIndentStream.
	
	features do: [ :feature |
		feature accept: self.
		features last = feature ifFalse: [ self stream cr; cr ]
	].

	^self stream