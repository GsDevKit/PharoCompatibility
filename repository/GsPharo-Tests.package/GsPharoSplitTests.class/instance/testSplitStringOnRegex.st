tests
testSplitStringOnRegex
	self assert: ('foobar' splitOn: '[aeiou]+' asRegex)
		equals: #('f' 'b' 'r') asOrderedCollection.
	self assert: ('' splitOn: '[aeiou]+' asRegex)
		equals: #('') asOrderedCollection.