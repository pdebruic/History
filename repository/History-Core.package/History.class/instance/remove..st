removing
remove: anObject
	"Removes anObject from the elements of receiver,
	ignores any error if anObject is not in the receiver elements."

	self 
		remove: anObject
		ifAbsent: [ NotFound signal: 'That element was not found in the History' ]