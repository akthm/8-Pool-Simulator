initialization
initializeWithAncor: aMorph
	super initialize.
	ancor := aMorph.
	angle := 0.
	v := 1.
	angleFreeze := false.
	mouseIn := false.
	self color: Color transparent .
	self borderWidth: 0.
	cueMorph := ImageMorph new.
	cueMorph image:(ImageReadWriter formFromFileNamed: 'cuestick.png').
	cueMorph image: (cueMorph image scaledToSize: (cueMorph image extent * (200 / cueMorph image extent x ))).
	self addMorph: cueMorph.
	self extent: cueMorph extent.
	self reposition .
	"self drawAngleViewer ."
	
