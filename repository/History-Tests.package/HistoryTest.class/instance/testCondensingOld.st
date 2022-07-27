tests
testCondensingOld
	| h |
	h := History
		     of: $A
		     withAll: { 
				     (HistoryTestElement at: (Date year: 2015 month: 1 day: 1)
					      tag: $A).
				     (HistoryTestElement at: (Date year: 2015 month: 3 day: 1)
					      tag: $A).
				     (HistoryTestElement at: (Date year: 2015 month: 4 day: 1)
					      tag: $B).
				     (HistoryTestElement at: (Date year: 2015 month: 6 day: 1)
					      tag: $A).
				     (HistoryTestElement at: (Date year: 2015 month: 9 day: 1)
					      tag: $A) }
		     selector: #magnitude.
	h condenseOld.
	self assert: h size equals: 3.
	"self assert: h condenseCursor
		equals: (Date year: 2015 month: 6 day: 1)"