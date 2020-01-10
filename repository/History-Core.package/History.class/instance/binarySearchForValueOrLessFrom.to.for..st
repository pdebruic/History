lookup
binarySearchForValueOrLessFrom: startIndex to: endIndex for: aDate
	| elem |
	startIndex >= endIndex
		ifTrue: [ elem := elements rawAt:  startIndex.
			(elem perform: magnitudeSelector) <= aDate
				ifTrue: [ ^ elem ]
				ifFalse: [ ^ nil ] ]
		ifFalse: [ | mid next |
			mid := startIndex + ((endIndex - startIndex) // 2).
			elem := elements rawAt:  mid.
			 aDate<( elem perform: magnitudeSelector) 
				ifTrue: [ ^ self binarySearchForValueOrLessFrom: startIndex to: mid for: aDate ].
			next := self binarySearchForValueOrLessFrom: mid+1 to: endIndex for: aDate.
			next ifNil: [ ^ elem ] ifNotNil: [ :el | ^ el ] ]