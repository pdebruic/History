sample data
sampleElements
	^ {(HistoryTestElement at: (Date year: 2015 month: 1 day: 1) tag: $A).
	(HistoryTestElement at: (Date year: 2015 month: 3 day: 1) tag: $A).
	(HistoryTestElement at: (Date year: 2015 month: 5 day: 1) tag: $A).
	(HistoryTestElement at: (Date year: 2015 month: 7 day: 1) tag: $A)}
		,
			{(HistoryTestElement at: (Date year: 2015 month: 2 day: 1) tag: $B).
			(HistoryTestElement at: (Date year: 2015 month: 4 day: 1) tag: $B).
			(HistoryTestElement at: (Date year: 2015 month: 6 day: 1) tag: $B).
			(HistoryTestElement at: (Date year: 2015 month: 8 day: 1) tag: $B)}