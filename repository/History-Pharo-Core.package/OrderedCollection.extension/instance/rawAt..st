*History-Pharo-Core
rawAt: anInteger
	"Answer my element at index anInteger. at: is used by a knowledgeable
	client to access an existing element"

	
	^ array at: (anInteger + firstIndex - 1)