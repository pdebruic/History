removing
condenseAllButLatest
	"Need the latest value  for plots"
elements isEmptyOrNil  ifFalse:[
	| latest |
	latest := self latest.
	self condense.
	elements last = latest
		ifFalse: [ elements add: latest ]]