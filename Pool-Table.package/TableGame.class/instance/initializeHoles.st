initialization
initializeHoles
	"Initializing game hole Morphs and placing them on morphic table"
	| hole1 hole2 hole3 hole4 hole5 hole6 cclolor |
	holeTable := Array new:6.
	cclolor := Color transparent . "For debugging purposes"
	hole1 := CircleMorph new extent: 45@45.
	hole1 position: (self position + (35@35)).
	hole1 color: cclolor.
	hole1 borderWidth: 0.
	holeTable at: 1 put: hole1.
	self addMorph: hole1.
	
	hole2 := CircleMorph new extent: 45@45.
	hole2 position:( self position  + ( 35@430)).
	hole2 color: cclolor.
	holeTable at: 2 put: hole2.
	hole2 borderWidth: 0.
	self addMorph: hole2.
	
	hole3 := CircleMorph new extent: 45@45.
	hole3 position:( self position  + (425@455)).
	hole3 color: cclolor.
	hole3 borderWidth: 0.
	holeTable at: 3 put: hole3.
	self addMorph: hole3.
	
	hole4 := CircleMorph new extent: 45@45.
	hole4 position: ( self position  +(425@10)).
	hole4 color: cclolor.
	hole4 borderWidth: 0.
	holeTable at: 4 put: hole4.
	self addMorph: hole4.
	
	hole5 := CircleMorph new extent: 45@45.
	hole5 position: ( self position  + (815@430)).
	hole5 color: cclolor.
	hole5 borderWidth: 0.
	holeTable at: 5 put: hole5.
	self addMorph: hole5.
	
	hole6 := CircleMorph new extent: 45@45.
	hole6 position: ( self position  + (815@35)).
	hole6 color: cclolor.
	hole6 borderWidth: 0.
	holeTable at: 6  put: hole6.
	self addMorph: hole6.