logic
replay 
	self submorphsDo:[:sub | (sub  isKindOf: SystemWindow ) ifTrue: [self removeMorph:  sub]].
	inCounter := 0.
	terminate := false.
	counterMorph label: ('Balls pitted: {1}' format: {inCounter}).
	ballTable do: [:ball | (ball notNil )ifTrue: [self removeMorph: ball]].
 	self initializeBalls  .
	self runAlt .