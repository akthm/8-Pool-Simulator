initialization
initializeBalls
	"Initializing balls and placing them in table (15 - 8 ball || 16 - cue ball)"
	| tempBall positionArr ballIndArr eightPos cuePos cueMorph eightMorph |
	positionArr := {549@229 . 581@249 . 581@214 . 613@268 . 613@198 . 645@288 . 645@253 .  645@218 . 645@183 . 677@308 . 677@273 . 677@238 . 677@203 . 677@168 .}.
	ballIndArr := {1. 2. 3. 4. 5. 6. 7. 9. 10. 11. 12. 13. 14. 15.}.
	eightPos :=  613@233 .
	cuePos :=  TableGame cueDefaultPos .
	ballTable := Array new: 16.
	ballIndArr shuffle.
	1 to: positionArr size  do: [:x|
		tempBall := BallMorph new initializeWithImagePath: ('{1}ball.png' format: {ballIndArr at: x}).
		tempBall position: self position + (positionArr at: x).
		ballTable at:x put: tempBall.
		self addMorph: tempBall].
	cueMorph := BallMorph new initializeWithImagePath: 'cueball.png'.
	cueMorph position: (self position + TableGame cueDefaultPos) .
	eightMorph := BallMorph new initializeWithImagePath: '8ball.png'.
	eightMorph position: (self position + eightPos).
	ballTable at: 15 put:eightMorph.
	ballTable at: 16 put: cueMorph.
	self addMorph: cueMorph.
	self addMorph: eightMorph.
