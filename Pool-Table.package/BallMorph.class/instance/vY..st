accessing
vY: aNum
	| vy |
	vy := aNum.
	vy abs < 0.1 ifTrue: [vy := 0].
	v := (v x)@vy