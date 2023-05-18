*gspharo-core
splitOn: splitter 
	"splitter - can be a subsequence, a Block or a Regex (Not yet in GemStone).
	Any other object used as a splitter is treated as an Array containing that object."
	^ splitter split: self