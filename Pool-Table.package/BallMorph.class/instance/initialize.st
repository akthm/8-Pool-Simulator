initialization
initialize 
	super initialize.
	self color: Color transparent .
	self image: (ImageReadWriter formFromFileNamed: '1ball.png').
	self image: (self image scaledToSize: (self image extent * 0.12195121951)).
	v := 0@0.