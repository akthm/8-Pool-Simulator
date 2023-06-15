mouseHandling
mouseUp: anEvent
	cuestickMorph unFreezeAngle.
	self hitCue.
	cuestickMorph setV: 1.