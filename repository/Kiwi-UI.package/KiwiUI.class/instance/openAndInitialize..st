initialize-release
openAndInitialize: aRunner

	runner := aRunner.
	builder := UITheme builder.
	mainWindow := (self createMainWindow openInWindowLabeled: 'Kiwi BDD') extent: 500@500.