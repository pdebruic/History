converting
innerCollectionOrElementsFrom: aCollection
|col |
col:=OrderedCollection new. 
  aCollection isEmptyOrNil
    ifTrue: [^col ].
aCollection do:[:value | value isCollection ifTrue:[
		col addAll:(self innerCollectionOrElementsFrom:value)
		] ifFalse:[col add: value]].
  ^col