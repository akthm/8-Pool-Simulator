logic
fixBallOverlapbetween: morph1 and: morph2
	
	| c1 c2 overlap phi r1 r2 radius x1 x1f x2 x2f xy1f xy2f y1 y1f y2 y2f |
	radius := morph1 extent x / 2 ."assuming same radius for all balls"
	c1 := morph1 center. 
	c2 := morph2 center.
	overlap := (2  * radius) - (c1 dist: c2).
	x1 := morph1 position x.
	y1 := morph1 position y.
	x2 := morph2 position x.
	y2 := morph2 position y.
	phi := (y1 - y2) arcTan: (x1 - x2) ."relative angle"
	r1 := BallMorph rotate: (x1@y1) toAngle: phi.
	r2 := BallMorph rotate: (x2@y2) toAngle: phi.
	((r1 x) < (r2 x)) 
	ifTrue: [
			x1f := r1 x - (overlap / 2).
			x2f := r2 x + (overlap / 2).
		] 
	ifFalse: [
			x1f := r1 x + (overlap / 2).
			x2f := r2 x - (overlap / 2).
		].

	
	y1f := r1 y.
	y2f := r2 y.
	xy1f := BallMorph rotate: (x1f@y1f) toAngle: (phi negated ).
	xy2f := BallMorph rotate: (x2f@y2f) toAngle: (phi negated ).
	morph1 position: xy1f.
	morph2 position: xy2f.
	
	
	
	