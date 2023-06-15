logic
UnPause 
	pause:= false.
	self removeMorph: pauseMorph.
	self drawPauseButton 
	