lookup
current
	self notEmpty
		ifTrue: [ ^ self elements last value ]
		ifFalse: [ ^ nil ]