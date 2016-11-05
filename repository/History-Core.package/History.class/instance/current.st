lookup
current
	self notEmpty
		ifTrue: [ ^ self latest value ]
		ifFalse: [ ^ nil ]