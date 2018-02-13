lookup
binaryLookupMatchAt: aDate
	"Private - Lookups the element of receiver which is valid at aDate in the receiver cache."

	^ self elements
		findBinary:
			[ :one | aDate threeWayCompareTo: (one perform: self magnitudeSelector) ]
		ifNone: [ nil ]