removing
condenseOld
  elements isEmptyOrNil not
    ifTrue: [ 
      | value toRemove |
      toRemove := OrderedCollection new.
      value := elements first value.
      elements
        allButFirstDo: [ :eachElement | 
          (eachElement value historyCondenseCompareTo: value)
            ifTrue: [ toRemove add: eachElement ]
            ifFalse: [ value := eachElement value ] ].
      elements removeAll: toRemove ]