content
content

	| formatter |
	formatter := KiwiFormatterVisitor new.
	self item astNode accept: formatter.
	^formatter stream contents