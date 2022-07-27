removing
remove: anObject ifAbsent: absentBlock
	"Removes anObject from the elements of receiver,
	ignores any error if anObject is not in the receiver elements."
	self elements remove: anObject ifAbsent: absentBlock.
	anObject = condenseCursor ifTrue: [ condenseCursor := nil ]