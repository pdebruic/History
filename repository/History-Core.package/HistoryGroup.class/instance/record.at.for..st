operations
record: aValue at: aDateTime for: registryKey
	^(self historyOf: registryKey) record: aValue at: aDateTime.
	