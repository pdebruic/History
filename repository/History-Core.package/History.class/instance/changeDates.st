enumerating
changeDates
	"the dates and times the data moves from its previous value to a new one. "

	| value newElements |
	elements isEmptyOrNil
		ifTrue: [ ^ #() ].
	value := elements first value.
	newElements := OrderedCollection with: elements first timestamp.
	elements allButFirst
		do: [ :eachElement | 
			(eachElement value historyCondenseCompareTo: value)
				ifFalse: [ newElements add: eachElement timestamp.
					value := eachElement value ] ].
	^ newElements