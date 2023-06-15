initialization
initializeBorders
	"Initializing game borders and placing them on morphic table"
	| border1  border2 border3 border4 border5 border6 |
	border1 := BorderMorph new initializeWithPosition: (self position + (90@30)) extent: 330@25 inner: true.
	self addMorph: border1.
	border2 := BorderMorph new initializeWithPosition: (self position + (480@30)) extent: 330@25 inner: true.
	self addMorph: border2.
	border3 := BorderMorph new initializeWithPosition: (self position + (90@455)) extent: 330@25 inner: false.
	self addMorph: border3.
	border4 := BorderMorph new initializeWithPosition: (self position + (480@455)) extent: 330@25 inner: false.
	self addMorph: border4.
	border5 := BorderMorph new initializeWithPosition: (self position + (30@95)) extent: 25@320 inner: true.
	self addMorph: border5.
	border6 := BorderMorph new initializeWithPosition: (self position + (840@95)) extent: 25@320 inner: false.
	self addMorph: border6.
	borderTable := Array new:6.
	borderTable at: 1 put: border1.
	borderTable at: 2 put: border2.
	borderTable at: 3 put: border3.
	borderTable at: 4 put: border4.
	borderTable at: 5 put: border5.
	borderTable at: 6 put: border6.
