lookup
sequentialLookupMatchAt: aDate
  "Private - Lookups the element of receiver which date is equal to aDate."

  ^ self elements
    detect: [ :one | (one perform: magnitudeSelector) = aDate ]
    ifNone: [ nil ]