private
handleRun: aBlock

	aBlock
		on: KiwiError
		do: [ :error | |  dialogBuilder dialog |
			dialogBuilder := UITheme builder.
			dialog := (dialogBuilder newPluggableDialogWindow: 'An error in Kiwi has occurred') useDefaultOKButton.
			dialog contentMorph: error messageText asMorph.
			dialog model: nil.
			mainWindow openModal: dialog
		].