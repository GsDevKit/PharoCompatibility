accessing
converter
  converter ifNil: [ converter := self class perform: #'defaultConverter' ].
  ^ converter