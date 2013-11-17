testing
testPutSingleCharacter
	| actual |
	actual := ByteArray streamContents: [ :stream |
		| converter |
		converter := UTF8TextConverter new.
		converter
			nextPut: $a
			toStream: stream.
		converter
			nextPut: (Character codePoint: 16r20AC)
			toStream: stream ].
	self assert: actual = #(97 0 0 32 172) asByteArray