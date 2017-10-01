accessing
oldest
	"Answer the latest element of receiver that is loaded."

	self elements isEmpty
		ifTrue: [ ^ nil ].
	^ self elements first