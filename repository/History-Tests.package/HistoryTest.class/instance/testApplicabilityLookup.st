tests
testApplicabilityLookup
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
	self
		assert: (h at: (Date year: 2014 month: 1 day: 1) ifAbsent: [ nil ])
		equals: nil.
	self
		assert: (h at: (Date year: 2015 month: 1 day: 15)) magnitude
		equals: (Date year: 2015 month: 1 day: 1).
	self
		assert: (h at: (Date year: 2015 month: 3 day: 1)) magnitude
		equals: (Date year: 2015 month: 3 day: 1).
	self
		assert: (h at: '2015-12-12' asDate) magnitude
		equals: (Date year: 2015 month: 9 day: 1)