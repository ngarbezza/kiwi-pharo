running
runProfile: profileName

	| runner |
	runner := (self profileAt: profileName) runner.
	runner run.
	^runner