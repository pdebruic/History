tests
testQueryingAtDate
	| group |
	group := (HistoryGroup new
		owners: self sampleOwners;
		ownerSelector: #tag;
		magnitudeSelector: #magnitude;
		setElements: self sampleElements) yourself.
	group useApplicabilityLookup.
	self
		assert: (group allAt: (Date year: 2015 month: 1 day: 15)) size
		equals: 1.
	self
		assert: (group allAt: (Date year: 2015 month: 2 day: 1)) size
		equals: 2.
	self
		assert: (group allAt: (Date year: 2015 month: 3 day: 1)) size
		equals: 2.
	self
		assert: (group allAt: (Date year: 2015 month: 4 day: 15)) size
		equals: 2.
	group useMatchLookup.
	self
		assert: (group allAt: (Date year: 2015 month: 1 day: 15)) size
		equals: 0.
	self
		assert: (group allAt: (Date year: 2015 month: 2 day: 1)) size
		equals: 1.
	self
		assert: (group allAt: (Date year: 2015 month: 3 day: 1)) size
		equals: 1.
	self
		assert: (group allAt: (Date year: 2015 month: 4 day: 15)) size
		equals: 0