removing
removeDataExactlyAt: aDateTimeOrTimeOrDate
	self histories
		do:
			[ :eachHistory | eachHistory removeAllSuchThat: [ :element | element timestamp = aDateTimeOrTimeOrDate ] ]