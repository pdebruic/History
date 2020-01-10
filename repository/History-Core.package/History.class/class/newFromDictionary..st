instance-creation
newFromDictionary: aDict
	^ self new
		addAll: aDict values;
		yourself