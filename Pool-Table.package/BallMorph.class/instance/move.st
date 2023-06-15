logic 
move
	|slowVar|
	slowVar := ((v x abs > 0 and: (v y abs > 0))) ifTrue: [BallMorph slowingVar] ifFalse: [BallMorph slowingVar * 2].
	self position: self position + v.
	(v x = 0) ifFalse:[ self vX: (v x > 0 ifTrue: [v x - BallMorph slowingVar] ifFalse: [v x + slowVar])] .
	(v y = 0) ifFalse:[ self vY: (v y > 0 ifTrue: [v y - BallMorph slowingVar] ifFalse: [v y + slowVar])].
	