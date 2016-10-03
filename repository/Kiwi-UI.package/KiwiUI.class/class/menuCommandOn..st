menu item
menuCommandOn: aBuilder
	<worldMenu>

	(aBuilder item: #'Kiwi BDD')
		order: 3;
		label: 'Kiwi BDD';
		icon: Smalltalk ui icons kiwiIcon;
		action: [ self open ]