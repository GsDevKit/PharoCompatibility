*gspharo-core
split: aSequenceableCollection
	aSequenceableCollection isString 
		ifTrue: [ ^(String with: self) split: aSequenceableCollection ].
	^super split: aSequenceableCollection