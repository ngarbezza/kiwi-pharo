parsers
andExpr

	^super andExpr ==> [ :tokens |
		tokens size = 1
			ifTrue: [ tokens first ]
			ifFalse: [ KiwiCompositeTagRule new
				operator: #&;
				leftRule: tokens first;
				rightRule: tokens third
			]
		]