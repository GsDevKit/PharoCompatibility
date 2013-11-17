Accessing
newForEncoding: aString 
	| class encoding |
	"does not return a default "
	encoding := aString asLowercase.
	class := self allSubclasses
				detect: [:each | each encodingNames includes: encoding]
				ifNone: [].
	class isNil
		ifTrue: [^ nil].
	^ class new