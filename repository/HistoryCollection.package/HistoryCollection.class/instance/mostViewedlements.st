protocol
mostViewedlements
	
	^ (storage copy sort: [:a :b | a value >= b value]) collect: [:each | each key ]