accessing
vX: aNum
	| vx |
	vx := aNum.
	vx abs < 0.1 ifTrue: [vx := 0].
	v := vx@ (v y)