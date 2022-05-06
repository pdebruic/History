*HistoryGemStone
resortAllInstances
  System abort.
  System beginTransaction.
  MCPlatformSupport
    commitOnAlmostOutOfMemoryDuring: [ 
      | col |
      col := History allInstances.
      col
        doWithIndex: [ :ea :ind | 
          ea elements resort.
          ind \\ 200 = 0
            ifTrue: [ 
              System commitTransaction.
              System beginTransaction ] ] ].
  System commitTransaction