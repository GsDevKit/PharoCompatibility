*gspharo-core
allMethods
	^ self allSelectors asArray collect: [ :s | self lookupSelector: s ]