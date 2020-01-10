lookup
binaryLookupApplicableLowToHighAt: aDate
	"Private - Lookups the element of receiver which is valid at aDate in the receiver cache."

	 elements isEmptyOrNil
		ifTrue: [ ^ nil ].
	^ self binarySearchForValueOrLessFrom: 1 to: elements size for: aDate