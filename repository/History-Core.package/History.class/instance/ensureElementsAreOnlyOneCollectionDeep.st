converting
ensureElementsAreOnlyOneCollectionDeep
	| newHist |
	newHist := self collectElementsIntoCollections.
	elements := newHist elements ."collect: [ :elem | 
		            elem value isCollection ifTrue: [ 
			            elem value: elem value asSet ].
		            elem ]."
	self condense