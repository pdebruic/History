enumerating
select: selectBlock thenCollect: collectBlock
    " Optimized version Collection>>#select:thenCollect: "

	| newCollection  |

    newCollection := OrderedCollection new.

   elements do: [ :each |
		
		(selectBlock value: each) 
			ifTrue: [ newCollection addLast: (collectBlock value: each) ]].

    ^ newCollection