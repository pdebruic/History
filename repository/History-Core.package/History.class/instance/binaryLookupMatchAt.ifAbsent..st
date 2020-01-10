lookup
binaryLookupMatchAt: aDate ifAbsent: aBlock
	"Private - Lookups the element of receiver which is valid at aDate in the receiver cache."

	elements isEmptyOrNil
		ifTrue: [ ^ nil ].
	^ elements
		findBinary: [ :one | aDate threeWayCompareTo: (one perform: magnitudeSelector) ]
		ifNone: aBlock