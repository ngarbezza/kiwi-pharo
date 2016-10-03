as yet unclassified
testRunProfile

	[ KiwiProfileExample runProfile: 'sample 01' ] should not raise: KiwiError.
	[ KiwiProfileExample runProfile: 'sample 03' ] should not raise: KiwiError.

	[ KiwiProfileExample runProfile: 'sample 02' ] should raise: KiwiError.