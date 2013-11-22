public
reset

	super reset.
	isBinary ifNil: [isBinary := false].
	itsCollection class == ByteArray ifTrue: ["Store as String and convert as needed."
		itsCollection := itsCollection asString.
		isBinary := true].

	self converter. "ensure that we have a converter."