private
createTreeView

	^treeView := builder
		newTreeFor: self
		list: #resultsModels
		selected: #selectedResult
		changeSelected: #selectedResultChanged: