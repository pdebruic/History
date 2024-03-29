as yet unclassified
gtInspectorItemsIn: composite
	^ composite fastTable
		title: 'Items';
		display: [ self elements ];
		beMultiple;
		enableElementIndex;
		wantsAutomaticRefresh: true;
		column: 'Index' evaluated: [ :value :idex | idex asString ] width: 50;
		column: 'Item' evaluated: [ :value | GTObjectPrinter asTruncatedTextFrom: value ];
		send: [ :result | 
			"withSmalltalkSearch;
		showOnly: 50;
		helpMessage: 'Quick selection field. Given your INPUT, it executes: self select: [:each | INPUT ]'."
			result ifNotNil: [ 
				result isCollection ifTrue: [ 
					result size = 1
						ifTrue: [ result anyOne ]
						ifFalse: [ self species withAll: result ] 
				] ifFalse: [ result ]
			]
		]