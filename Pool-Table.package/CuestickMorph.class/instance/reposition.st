logic
reposition
	
	| centerX centerY radius x y inverAngle |
	inverAngle := angle + 180.
	centerX := ancor center x - 100 .
	centerY := ancor center y - 10.
	
	radius := self extent x + (35 / 2) - 80 + ((v/16) * 50) .
	
	x := centerX + (((radius * ((inverAngle ) degreeCos))) "* (3/4) "). "- (60 * (3 /4)"
	y := centerY + (((radius * ((inverAngle ) degreeSin)) "*(3/4)")  ).
	cueMorph heading: (inverAngle  + 180).
	self position: x@y.