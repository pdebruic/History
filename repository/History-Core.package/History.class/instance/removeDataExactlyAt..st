removing
removeDataExactlyAt: aDateTimeOrTimeOrDate
	self removeAllSuchThat: [ :element | element timestamp = aDateTimeOrTimeOrDate ]