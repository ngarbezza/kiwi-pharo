private
getPragmaOn: className forStep: aStep

	^(Pragma allNamed: (self getStepKind: aStep) , ':' asSymbol in: (Smalltalk at: className))
		detect: [ :pragma | pragma arguments first asRegex matches: aStep body ]
		ifNone: [ nil ].