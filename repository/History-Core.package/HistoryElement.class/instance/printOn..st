as yet unclassified
printOn: aStream
	timestamp printOn: aStream.
	aStream nextPut: $ .
	value printOn: aStream