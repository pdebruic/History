*historyGemStone
asSecondsSinceSqueakEpoch
  "Returns an Integer that represents the receiver in units of seconds since
 midnight January 1, 1901, local time."

  ^ self asSecondsGmt + self _localOffset