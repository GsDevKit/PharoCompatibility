*gspharo-core
join: aCollection
  "Curiously addAllLast: does not trigger a reSort, so we must do it here."

  ^ (super join: aCollection)
    resort;
    yourself