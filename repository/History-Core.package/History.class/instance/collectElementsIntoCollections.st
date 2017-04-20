converting
collectElementsIntoCollections
  | dates newHistory |
  dates := (self elements collect: [ :ea | ea timestamp ]) asSet sorted.
  newHistory := History new.
  dates
    do: [ :eachTimestamp | 
      | col |
      col := self innerCollectionOrElementsFrom: (self valuesAt: eachTimestamp).
      newHistory record: col at: eachTimestamp ].
  ^ newHistory