logic
updateV
	| mousePos delta |
	(angleFreeze)ifTrue:[
		mousePos := mouseEvent position.
		delta := freezePos dist: mousePos.
		self setV: (delta / 10)
		]