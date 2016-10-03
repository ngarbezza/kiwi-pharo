actions
saveFeatureToMethod

	| newFeature class method category |
	self halt. "TODO"
	class := (OBCompletionDialog openOn: (
		OBCompletionRequest new
			collection: Smalltalk allClasses caseSensitive: false;
			prompt: 'Select a class'
		)
	) answer.
	class ifNil: [ ^self ].
	method := (OBCompletionDialog	openOn: (
		OBCompletionRequest new
			collection: class  caseSensitive: false;
			prompt: 'Select a class'
		)
	) answer.
	method ifNil: [ ^self ].
	category := 'xxx'.
	newFeature := self currentFeature saveToMethod: method class: class category: category.
	self currentFeature isNewFeature ifTrue: [
		self replaceFeature: self currentFeature with: newFeature.
	] ifFalse: [
		"dialog preguntando si se reemplaza, si no es newFeature"
		self replaceFeature: self currentFeature with: newFeature.
	].