logic
runAlt
	self drawCuestick.
	[terminate]
		whileFalse: [
			| cuePitted deltaV |
			deltaV := 0@0.
			cuePitted := false.
			[pause] whileTrue: [World doOneCycle.].
			1 to: ballTable size do:[:ballInd|
				(self handleCollisionsOfBallNum: ballInd) ifTrue: [cuePitted := true].
				((ballTable at: ballInd) notNil )ifTrue: [
					deltaV := deltaV + ((ballTable at: ballInd) v abs ).
					(ballTable at: ballInd) move
				]].
			(deltaV = (0@0)) ifTrue: [
				(inCounter = 15) ifTrue: [terminate := true. self drawEndGameWindow ]
				ifFalse: [
				(cuePitted)ifTrue: [(ballTable at: 16) position: (self position + TableGame cueDefaultPos) . self addMorph: (ballTable at: 16). cuePitted := false].
				self addMorph: cuestickMorph.
				cuestickMorph reposition.
				[(((ballTable at: 16) v) = (0@0)) and: (terminate = false) and: (pause = false)] whileTrue: [
					(cuestickMorph mouseIn)ifTrue:[cuestickMorph updateAngle].
					(cuestickMorph angleFrozen)ifTrue:[cuestickMorph updateV].
					World doOneCycle ].
				self removeMorph: cuestickMorph.
				]].
	
			World doOneCycle.
			(Delay forSeconds: 0.002) wait.
			].
