logic
handleCollisionsOfBallNum: x 
	| ballMorph |
	ballMorph := ballTable at: x.
	(ballMorph notNil) ifTrue: [
	|flag|
	flag := false.
	1 to: holeTable size do:[:holeInd| 
		(ballMorph isCollidedwithHole: (holeTable at: holeInd))
		ifTrue:[ 
							(x = 16) 
							ifTrue: [ self removeMorph: ballMorph.
												ballMorph setV: (0@0). ^true]
							ifFalse:[
							self incrementCounter.
							self removeMorph: (ballTable at: x).
							ballTable at: x put: nil.
							flag := true
						]]
		].
		(flag) ifTrue: [^false].
		1 to: borderTable size do:[:bInd| 
					(ballMorph isCollidedwithBorder: (borderTable at: bInd))
					ifTrue:[ ballMorph collidwithBorder: (borderTable at: bInd).]
		].
	
	
		1 to: ballTable size do:[:j | 
					((ballTable at: j) notNil ) ifTrue: [ 
					  (ballMorph = (ballTable at: j)) ifFalse:[  
						(ballMorph isCollidedwithBall: (ballTable at: j))
							ifTrue:[ ballMorph collideWithBall: (ballTable at: j).
								]]]
		].
			].		
	^false