tests
testSequentialApplicabilityLookup
	| h |
	h := History
		of: $A
		withAll:
			{(HistoryTestElement at: (Date year: 2015 month: 1 day: 1) tag: $A).
			(HistoryTestElement at: (Date year: 2015 month: 3 day: 1) tag: $A).
			(HistoryTestElement at: (Date year: 2015 month: 6 day: 1) tag: $A).
			(HistoryTestElement at: (Date year: 2015 month: 9 day: 1) tag: $A)}
		selector: #magnitude.
	h lookupPolicy: History applicabilityLookup.
	self assert: (h sequentialLookupApplicableAt: (Date year: 2014 month: 1 day: 1)) equals: nil.
	self
		assert: (h sequentialLookupApplicableAt: (Date year: 2015 month: 1 day: 15)) magnitude
		equals: (Date year: 2015 month: 1 day: 1).
	self
		assert: (h sequentialLookupApplicableAt: (Date year: 2015 month: 3 day: 1)) magnitude
		equals: (Date year: 2015 month: 3 day: 1).
	self
		assert: (h sequentialLookupApplicableAt: (Date year: 2015 month: 8 day: 12)) magnitude
		equals: (Date year: 2015 month: 6 day: 1).
	self
		assert: (h sequentialLookupApplicableAt: (Date year: 2015 month: 12 day: 12)) magnitude
		equals: (Date year: 2015 month: 9 day: 1)