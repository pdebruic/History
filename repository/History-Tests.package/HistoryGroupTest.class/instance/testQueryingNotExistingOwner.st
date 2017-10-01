tests
testQueryingNotExistingOwner
	| group |
	group := (HistoryGroup new
		owners: self sampleOwners;
		ownerSelector: #tag;
		magnitudeSelector: #magnitude;
		setElements: self sampleElements) yourself.
	group useApplicabilityLookup.
	self
		assert: (group at: (Date year: 2015 month: 1 day: 15) of: $C)
		equals: nil