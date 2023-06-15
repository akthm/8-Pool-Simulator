logic 
isCollidedwithHole: aMorph
	| c1 c2 r1 r2 |
	c1 := self center.
	c2 := aMorph center.
	r1 := self extent x / 2.
	r2 := aMorph extent / 8.
	^((c1 dist: c2) <= (r1 + r2))