logic
fixOverlapBorder: borderMorph WithBall: ballMorph
	| fixationPoint ballPoint delta overlap |
	(borderMorph isVertical)	
		 ifTrue: [
			(borderMorph isInner )
				ifTrue: [fixationPoint := borderMorph closestPointTo:  ballMorph leftCenter. ballPoint := ballMorph leftCenter. delta := (1@0)]
				 ifFalse: [fixationPoint := borderMorph closestPointTo: ballMorph rightCenter .  ballPoint := ballMorph rightCenter. delta := (-1 @0) ]
			]
		 ifFalse: [(borderMorph isInner)
				ifTrue: [fixationPoint := borderMorph closestPointTo: ballMorph topCenter. ballPoint := ballMorph topCenter. delta := (0@ 1) ]
				 ifFalse: [fixationPoint := borderMorph closestPointTo: ballMorph bottomCenter. ballPoint := ballMorph bottomCenter. delta := (0@ -1)]]. 
	overlap := (fixationPoint - ballPoint  ) abs .
	ballMorph position: (ballMorph position + (overlap * delta)).