*gspharo-core
split: aSequenceableCollection 
	| result position |
	result := OrderedCollection new.
	position := 1.
	aSequenceableCollection
		withIndexDo: [:element :idx |
			(self value: element)
				ifTrue: [result add: (aSequenceableCollection copyFrom: position to: idx - 1).
					position := idx + 1]].
	result add: (aSequenceableCollection copyFrom: position to: aSequenceableCollection size).
	^ result