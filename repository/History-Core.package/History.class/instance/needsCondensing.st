testing
needsCondensing
	^ elements notNil
		and: [ (elements collect: [ :ea | ea timestamp ]) asSet size ~= self size ]