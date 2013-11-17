*gspharo-core
split: aSequencableCollection
	| result position oldPosition |
	result := OrderedCollection new.
	position := 1.
	oldPosition := position.
	position := aSequencableCollection indexOfSubCollection: self startingAt: position.
	[ position > 0 ] whileTrue: [
		result add: (aSequencableCollection copyFrom: oldPosition to: position - 1).
		position := position + self size.
		oldPosition := position.
		position := aSequencableCollection indexOfSubCollection: self startingAt: position.
	].
	result add: (aSequencableCollection copyFrom: oldPosition to: aSequencableCollection size).
	^ result