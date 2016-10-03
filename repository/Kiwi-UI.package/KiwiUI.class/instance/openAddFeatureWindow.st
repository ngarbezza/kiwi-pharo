actions
openAddFeatureWindow
	"Opens a window requesting the source of the feature to add"

	| dialog |
	dialog := KiwiAddFeatureDialog openOn: mainWindow.
	dialog isCancelled ifTrue: [ ^self ].
	[ dialog featureToAdd featureContent.
	runner addFeature: dialog featureToAdd.
	self createTabForFeature: dialog featureToAdd ]
		on: KiwiError
		do: [ :e | UITheme new
			alertIn: mainWindow
			text: e messageText
			title: 'Error'
			configure: [ :d |]
		].