printing
printOn: stream
	stream
		nextPutAll: 'a History ';
		nextPutAll: self elements size asString;
		nextPut: $ .
	self latest printOn: stream