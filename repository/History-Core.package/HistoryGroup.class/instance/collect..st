enumerating
collect:aBlock
	^self registry values gather:[:ea |ea collect:aBlock]