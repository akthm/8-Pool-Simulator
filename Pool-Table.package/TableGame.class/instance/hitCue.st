logic
hitCue
	| vx vy |
	vx := cuestickMorph v * (cuestickMorph angle degreesToRadians ) cos.
	vy := cuestickMorph v * (cuestickMorph angle degreesToRadians ) sin.
	
	(ballTable at: 16) setV: (vx@vy)