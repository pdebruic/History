instance creation
value: aValue at: aTimestamp
	^ self new
		value: aValue;
		timestamp: aTimestamp;
		yourself