conversion
nextPutAll: aString toStream: aStream

	aString do: [:char | self nextPut: char toStream: aStream].