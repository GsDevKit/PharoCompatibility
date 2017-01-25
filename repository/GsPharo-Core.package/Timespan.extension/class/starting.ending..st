*gspharo-core
starting: startDateAndTime ending: endDateAndTime

	^ self 
		starting: startDateAndTime asDateAndTime
		duration: (endDateAndTime asDateAndTime - startDateAndTime asDateAndTime).