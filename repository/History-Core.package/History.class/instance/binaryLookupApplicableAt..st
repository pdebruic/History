lookup
binaryLookupApplicableAt: aDate
  "Private - Lookups the element of receiver which is valid at aDate in the receiver cache."

  ^ self elements
    findOrNearestLessIndex: [ :one | (one perform: self magnitudeSelector) threeWayCompareTo: aDate ]
    do: [ :foundInd | self elements at: foundInd ]
    ifNone: [ nil ]