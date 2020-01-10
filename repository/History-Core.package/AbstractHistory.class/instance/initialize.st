initializing
initialize
	super initialize.
	lookupPolicy := self class applicabilityLookup.
	magnitudeSelector := self defaultMagnitudeSelector