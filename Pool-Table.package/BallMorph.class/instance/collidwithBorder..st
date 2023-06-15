logic 
collidwithBorder: aMorph
	(aMorph isVertical)
		ifTrue: [
				self vX: (v x) negated 
				] 
		ifFalse: [
				self vY: (v y) negated 
				].
		BallMorph fixOverlapBorder: aMorph WithBall: self.