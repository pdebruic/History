lookup
binaryLookupMatchAt: aDate
  "Private - Lookups the element of receiver which is valid at aDate in the receiver cache."

  ^ self elements
    findBinary: [ :one | (one perform: self magnitudeSelector) threeWayCompareTo: aDate ]
    ifNone: [ nil ]