lookup
sequentialLookupApplicableAt: aDate ifAbsent: aBlock
	"Private - Lookups the element of receiver which is valid at aDate in the receiver cache."

	| last |

	last := nil.
	self elements
		do: [ :ea | 
			(ea perform:  magnitudeSelector) <= aDate
				ifTrue: [ last := ea ]
				ifFalse: [ ^ last ] ].
			last ifNil: [^aBlock]  .
	^ last