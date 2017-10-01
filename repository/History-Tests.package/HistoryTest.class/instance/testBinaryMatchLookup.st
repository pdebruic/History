tests
testBinaryMatchLookup
	| h |
	h := History
		of: $A
		withAll:
			{(HistoryTestElement at: '2015-01-01' asDate tag: $A).
			(HistoryTestElement at: '2015-03-01' asDate tag: $A).
			(HistoryTestElement at: '2015-06-01' asDate tag: $A).
			(HistoryTestElement at: '2015-09-01' asDate tag: $A)}
		selector: #magnitude.
	h lookupPolicy: History matchLookup.
	self should: (h binaryLookupMatchAt: '2015-01-15' asDate) isNil.
	self assert: (h binaryLookupMatchAt: '2015-03-01' asDate) notNil