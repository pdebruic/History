*historyGemStone
asSecondsSinceGemStoneEpoch
  "Returns an Integer that represents the receiver in units of seconds since
 midnight January 1, 2001, local time."

  ^ (self - HistoryGemStoneConstants gemStoneEpochDate) asSeconds