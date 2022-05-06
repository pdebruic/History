*historyGemStone
< aDate
  "Returns true if the receiver represents a date after that of the argument,
 and false if it doesn't.  Generates an error if the argument is not
 a Date."

  aDate isDate
    ifTrue: [ 
      | argYear |
      argYear := aDate year.
      year == argYear
        ifTrue: [ ^ dayOfYear < aDate dayOfYear ]
        ifFalse: [ ^ year < argYear ] ]
    ifFalse: [ ^ self asSeconds < aDate asSeconds ]