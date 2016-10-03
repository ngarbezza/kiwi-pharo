parser definitions
table

	| cell row |
	cell := ($| asParser / #newline asParser) negate plus flatten , $| asParser
		==> [ :tokens | tokens first trimBoth ].
	row := $| asParser , cell plus , #newline asParser optional, #space asParser star
		==> #second.
	^row plus