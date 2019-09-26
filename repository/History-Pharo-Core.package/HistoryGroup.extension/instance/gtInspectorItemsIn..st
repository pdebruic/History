*History-Pharo-Core
gtInspectorItemsIn: composite
	<gtInspectorPresentationOrder: 0> 
	^ (composite fastList)
		title: 'Items';
		display: [ 
			"The FastTable renderer needs to access elements by index so we transform
			the collection to an OrderedCollection. Subclasses can override the #display
			block to provide a different behaviour. The previous renderer had this behaviour
			implemented in the renderer."
			self registry associations sorted:[:a :c | a key <= c key] ];
		
		
		beMultiple;
		send: [ :selection | 
			selection isNil 
			ifTrue:[nil]
			ifFalse:[ (selection size = 1) 
				ifTrue: [ selection anyOne value ] 
				ifFalse: [ selection collect: #value ] ]]