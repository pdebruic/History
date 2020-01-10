perf-testing
simpleLookupPerformanceTest: aSize
"
self simpleLookupPerformanceTest: 22 #('1354007.396 per second' '3703402.558 per second') 

#('694810.276 per second' '3118718.056 per second')
"
	| hist today ts |
	today := Date today.
	hist := History new.
	1 to: aSize do: [ :ind | hist record: 1 at: today + ind days ].
	ts := today + (aSize * 0.75) days + 5 hours.
	^ Array
		with: [ hist sequentialLookupApplicableAt: ts ] bench
		with: [ hist binaryLookupApplicableAt: ts ] bench