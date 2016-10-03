instance creation
allFeaturesFromDirectory: aDirectoryPath
	"Returns a collection of features assuming all the files in the directory path are features"
	
	^(FileDirectory on: aDirectoryPath) fileNames
		collect: [ : filePath | self path: aDirectoryPath , '/' , filePath ]