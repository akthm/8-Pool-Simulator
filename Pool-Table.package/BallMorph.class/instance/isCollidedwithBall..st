logic 
isCollidedwithBall: aBallMorph
	| ball1Center ball2Center radius distanceSquared |

		ball1Center := self center.  "Center position of ball1"
		ball2Center := aBallMorph center.  "Center position of ball2"
		radius := (self extent x) / 2.  "Radius of the balls"

		distanceSquared := (ball1Center dist: ball2Center) squared .
		 ^(distanceSquared <= (radius squared * 4))