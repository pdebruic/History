lookup
lookupMatchAt: aDate ifAbsent: aBlock
	"Private - Lookups the element of receiver which date is equal to aDate."

	^ self sequentialLookupMatchAt: aDate ifAbsent: aBlock