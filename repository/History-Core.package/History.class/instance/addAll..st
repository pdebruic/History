adding
addAll: aCollection
	"Private - Adds aCollection of elements into the elements of receiver."
	self elements addAll: aCollection.
	condenseCursor notNil ifTrue: [ 
		| ts |
		ts := condenseCursor perform: magnitudeSelector.
		aCollection do: [ :ea | 
			(ea perform: magnitudeSelector) < ts ifTrue: [ 
				condenseCursor := ea.
				ts := condenseCursor perform: magnitudeSelector ] ] ].
	^ aCollection