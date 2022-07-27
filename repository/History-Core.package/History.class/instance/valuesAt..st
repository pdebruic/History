lookup elements
valuesAt: aDateAndTime
	^ (self elements select: [ :ea | ea timestamp = aDateAndTime ]
		   thenCollect: [ :ea | ea value ]) asOrderedCollection