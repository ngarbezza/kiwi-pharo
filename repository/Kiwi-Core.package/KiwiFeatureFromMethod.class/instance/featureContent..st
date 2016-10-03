accessing
featureContent: aString

	^(Smalltalk at: self featureClass)
		compileSilently: ('{1} ^''{2}''' format: {self featureMethod asString. aString.})
		classified: ((Smalltalk at: self featureClass) >> self featureMethod) category