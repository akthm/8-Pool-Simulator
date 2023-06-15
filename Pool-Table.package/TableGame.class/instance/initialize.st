initialization
initialize 
	super initialize.
	terminate := false.
	pause := false.
	inCounter := 0.
	tableMorph := TableMorph new.
	self borderWidth: 0.
	self color: Color transparent .
	tableMorph position: self position.
	self extent: tableMorph extent .
	self addMorph: tableMorph.
	self drawPauseButton.
	self drawCloseButton.
	self drawBallCounter .
	self initializeHoles.
	self initializeBorders.
	self initializeBalls .