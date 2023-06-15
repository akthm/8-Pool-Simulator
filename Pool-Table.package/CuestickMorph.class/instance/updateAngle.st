logic
updateAngle 
	| cueCenter mousePos relativeAngle dis dx dy |
	((mouseEvent notNil) and:(angleFreeze = false)) ifTrue:[

		mousePos := mouseEvent position.
		cueCenter := ancor center.
		dx := cueCenter x - mousePos x.
		dy := cueCenter y - mousePos y.
		dis := cueCenter dist: mousePos.
		relativeAngle := ((dy)arcTan:(dx)) .
		self setAngle: relativeAngle radiansToDegrees  + 180.
		]