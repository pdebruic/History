converting
innerCollectionOrElementsFrom: aCollection
  aCollection isEmptyOrNil
    ifTrue: [ ^ OrderedCollection new ].
  aCollection isCollection
    ifTrue: [ 
      aCollection anyOne isCollection
        ifTrue: [ ^ self innerCollectionOrElementsFrom: aCollection anyOne ]
        ifFalse: [ ^ aCollection ] ]
    ifFalse: [ ^ OrderedCollection with: aCollection ]