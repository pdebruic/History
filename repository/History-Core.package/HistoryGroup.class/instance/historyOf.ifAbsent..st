accessing
historyOf: anObject ifAbsent:aBlock
	"Answer the history belonging to anObject."
	
	^self registry at: anObject ifAbsent:aBlock