enumerating
changeDates
	"the dates and times the data moves from its previous value to a new one. "

	elements isEmptyOrNil not
		ifTrue: [ | value newElements |
			value := elements last value.
			newElements := OrderedCollection new.
			newElements add: elements last timestamp.
			elements allButLast reverse
				do: [ :eachElement | 
					(eachElement value historyCondenseCompareTo: value)
						ifFalse: [ newElements add: eachElement timestamp.
							value := eachElement value ] ].
			^ newElements ]