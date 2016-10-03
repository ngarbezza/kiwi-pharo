configuring features
featuresFromClass: aClassName methods: anArray

	anArray do: [ :name | self featureFromClass: aClassName method: name ]
	