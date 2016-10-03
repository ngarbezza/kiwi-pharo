private
getStepKind: astStep

	| stepKind |
	stepKind := KiwiInternationalization getKeywordIdentifier: astStep kind.
	"And or But steps are interpreted as the previous Given, When or Then step"
	(#(and but) includes: stepKind)
		ifTrue: [ stepKind := currentStepKind ]
		ifFalse: [ currentStepKind := stepKind ].
	^stepKind