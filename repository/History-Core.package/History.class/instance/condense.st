removing
condense
	elements isEmptyOrNil not ifTrue: [ 
		| value keepers ts val cursorTimeStamp  |
		keepers := Array streamContents: [ :s | 
			           elements doWithIndex: [ :eachElement :ind | 
				           ind = 1
					           ifTrue: [ s nextPut: eachElement. 
						           condenseCursor ifNil: [ 
							           condenseCursor := eachElement .
							
							            ].
						value := condenseCursor value.
						 cursorTimeStamp:=condenseCursor perform: magnitudeSelector .  ]
					           ifFalse: [ 
						           (ts:=eachElement perform:  magnitudeSelector) < cursorTimeStamp
							           ifTrue: [ s nextPut: eachElement ]
							           ifFalse: [ 
								           ts =  cursorTimeStamp ifTrue: [ 
									           value := eachElement  value ]
									           ifFalse: [ 
										           ((val := eachElement value) 
											            historyCondenseCompareTo: value) ifFalse: [ 
											           s nextPut: eachElement.
											           value := val ] ] ] ] ] ].
		elements := keepers asSortedCollection: self.
		condenseCursor := elements last   ].
	