logic
handleCollision: morph1 with: morph2
	| phi v1r v2r vx1f vx2f vy1f vy2f d dx dy |
	dx := morph1 center  x - morph2 center  x.
	dy := morph1 center y - morph2 center y.
	d := morph1 center dist: morph2 center.
	phi := (dy arcTan: dx).
	v1r := BallMorph rotate: (morph1 v) toAngle: phi.
	v2r := BallMorph rotate: (morph2 v) toAngle: phi.
	vx1f := v2r x.
	vy1f := v1r y.
	vx2f := v1r x.
	vy2f := v2r y.
	morph1 setV: (BallMorph rotate: (vx1f@vy1f) toAngle: (phi negated )).
	morph2 setV: (BallMorph rotate: (vx2f@vy2f) toAngle: (phi negated )).
	morph1 move.
	morph2 move.
	BallMorph fixBallOverlapbetween: morph1  and: morph2.
	