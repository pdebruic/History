lookup
binaryLookupMatchAt: aDate
	"Private - Lookups the element of receiver which is valid at aDate in the receiver cache."

	^self binaryLookupMatchAt: aDate ifAbsent: [ nil ]