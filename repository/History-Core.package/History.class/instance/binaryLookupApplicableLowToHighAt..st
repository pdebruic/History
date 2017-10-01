lookup
binaryLookupApplicableLowToHighAt: aDate
	"Private - Lookups the element of receiver which is valid at aDate in the receiver cache."

	| low mid high found test |
	low := 1.
	test := 0.
	high := self elements size.
	found := nil.
	[ low <= high ]
		whileTrue: [ mid := low + ((high - low) // 2).
			found := self elements at: mid.
			test := ( (found perform: self magnitudeSelector)  threeWayCompareTo: aDate)  .
			test = 0
				ifTrue: [ ^ found ].
			low = high
				ifTrue: [ test < 0
						ifTrue: [ ^ found ]
						ifFalse: [ ^ nil ] ].
			test < 0
				ifTrue: [ low := mid + 1 ]
				ifFalse: [ high := mid - 1 ] ].
	^ found