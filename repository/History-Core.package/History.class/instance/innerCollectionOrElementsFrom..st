converting
innerCollectionOrElementsFrom: aCollection
  aCollection isEmptyOrNil
    ifTrue: [ ^ OrderedCollection new ].
  aCollection isCollection
    ifTrue: [ 
      aCollection first isCollection
        ifTrue: [ ^ self innerCollectionOrElementsFrom: aCollection first ]
        ifFalse: [ ^ aCollection ] ]
    ifFalse: [ ^ OrderedCollection with: aCollection ]