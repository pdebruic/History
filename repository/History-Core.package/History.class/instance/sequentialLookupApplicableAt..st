lookup
sequentialLookupApplicableAt: aDate
	"Private - Lookups the element of receiver which is valid at aDate in the receiver cache."

	| last |
	last := nil.
	self elements
		do: [ :ea | 
			(ea perform: self magnitudeSelector) <= aDate
				ifTrue: [ last := ea ]
				ifFalse: [ ^ last ] ].
	^ last