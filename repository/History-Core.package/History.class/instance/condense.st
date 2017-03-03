removing
condense
	elements isEmptyOrNil not
		ifTrue: [ | value newElements |
			value := elements last value.
			newElements := SortedCollection sortBlock: self.
			newElements add: elements last.
			elements allButLast reverse
				do: [ :eachElement | 
					(eachElement value historyCondenseCompareTo: value)
						ifFalse: [ newElements add: eachElement.
							value := eachElement value ] ].
			self initializeElements.
			self addAll: newElements ]