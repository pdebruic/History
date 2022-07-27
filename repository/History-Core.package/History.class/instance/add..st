adding
add: anObject
	"Add anObject into the elements of receiver."
	self elements add: anObject.
	condenseCursor notNil ifTrue: [ 
		| ts |
		ts := anObject perform: magnitudeSelector.
		ts < (condenseCursor perform: magnitudeSelector) ifTrue: [ condenseCursor := anObject ] ].
	^ anObject