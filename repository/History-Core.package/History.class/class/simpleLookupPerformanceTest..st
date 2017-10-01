perf-testing
simpleLookupPerformanceTest: aSize
	| hist today ts |
	today := Date today.
	hist := History new.
	1 to: aSize do: [ :ind | hist record: 1 at: today + ind days ].
	ts := today + (aSize * 0.75) days + 5 hours.
	^ Array
		with: [ hist sequentialLookupApplicableAt: ts ] bench
		with: [ hist binaryLookupApplicableAt: ts ] bench