logic
rotate: aPoint toAngle: aAngle
	| vx vx1 vy vy1 |
	vx := aPoint x.
	vy := aPoint y.
	vx1 := (vx * (aAngle) cos) + (vy * (aAngle) sin).
	vy1 :=  (vx * ((aAngle) sin negated)  ) + (vy * (aAngle ) cos).
	^ vx1@vy1.