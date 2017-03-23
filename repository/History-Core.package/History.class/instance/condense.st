removing
condense
  elements isEmptyOrNil not
    ifTrue: [ 
      | value toRemove |
      toRemove := OrderedCollection new.
      value := elements last value.
      elements
        reverseDo: [ :eachElement | 
          (eachElement value historyCondenseCompareTo: value)
            ifTrue: [ toRemove add: eachElement ]
            ifFalse: [ value := eachElement value ] ].
      elements removeAll: toRemove ]