*historyGemStone
asSecondsHist
  "Returns an Integer that represents the receiver in units of seconds since
 midnight January 1, 1901, local time."

  | dt |
  dt := Date year: 1901 month: 1 day: 1.
  ^ (self - dt) asSeconds