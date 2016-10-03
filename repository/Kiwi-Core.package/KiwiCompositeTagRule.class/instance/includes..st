evaluating
includes: aGherkinTaggedASTNode

	^(self leftRule includes: aGherkinTaggedASTNode)
		perform: self operator
		with: (self rightRule includes: aGherkinTaggedASTNode)