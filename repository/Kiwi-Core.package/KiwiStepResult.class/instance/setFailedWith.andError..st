setting status
setFailedWith: aMethod andError: anError

	failure := anError.
	matchingMethod := aMethod.
	status := #failed.