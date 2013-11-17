private basic
basicNext

	self flag: 'In Pharo, the super implementation of next will return nil if the stream is at the end, but in GemStone it throws an exception'.
	(self atEnd) ifTrue: [ ^ nil ].
	^ super next