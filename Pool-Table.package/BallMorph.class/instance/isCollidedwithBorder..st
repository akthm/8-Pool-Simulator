logic 
isCollidedwithBorder: aBorderMorph
	
	^self intersects: aBorderMorph bounds .
	"| tempPoint outerLine |
	outerLine := aBorderMorph outerLine .
	(aBorderMorph isVertical )
		ifTrue: [
				(aBorderMorph isInner )
					ifTrue: [tempPoint := self leftCenter.] 
					ifFalse: [tempPoint := self rightCenter].
					^((((aBorderMorph closestPointTo: tempPoint) - tempPoint) abs  x - (self v x abs )) <= 0)
			] 
		ifFalse: [
				(aBorderMorph isInner )
					ifTrue: [tempPoint := self topCenter.] 
					ifFalse: [tempPoint := self bottomCenter].
					^((((aBorderMorph closestPointTo: tempPoint) - tempPoint) abs  y - (self v y abs)) <= 0)
			]"