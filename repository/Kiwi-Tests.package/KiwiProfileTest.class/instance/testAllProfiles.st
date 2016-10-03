as yet unclassified
testAllProfiles
	"This test depends on the profiles defined in KiwiProfileExample class"

	(KiwiProfileExample allProfiles includesAllOf: #('sample 01' 'sample 02' 'sample 03')) should be: true.