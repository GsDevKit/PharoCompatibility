*Multilingual-TextConversion
storeBinaryOn: aStream
	"Store the receiver on a binary (file) stream"
	self codePoint < 256 
		ifTrue:[aStream basicNextPut: self codePoint]
		ifFalse:[aStream nextInt32Put: self codePoint].