private
createTagsPanel

	^builder newGroupbox: 'Tags' forAll: {
		builder newRow: {
			builder newLabelGroup: {
				'Tag filter:' -> (builder
					newTextEntryFor: self runner
					getText: #tagFilter
					setText: #tagFilter:
					help: 'Tags to include/exclude. Examples: @tag1, ~@tag2, (@tag1 & @tag2)'
				)
			}.
			builder
				newButtonFor: self
				action: #openTagsHelp
				label: '?'
				help: 'Shows some tags usage & examples'.
		}.		
	}