lookup
sequentialLookupApplicableAt: aDate
	"Private - Lookups the element of receiver which is valid at aDate in the receiver cache."

	| last |

	last := nil.
	elements
		do: [ :ea | 
			(ea perform:  magnitudeSelector) <= aDate
				ifTrue: [ last := ea ]
				ifFalse: [ ^ last ] ].
	^ last