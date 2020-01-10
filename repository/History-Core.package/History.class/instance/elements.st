accessing
elements
	"Return the value of elements."

	elements ifNil: [self initializeElements].
	^elements