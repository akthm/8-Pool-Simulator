initialization
initializeWithImagePath: aPath
	super initialize.
	self color: Color transparent .
	self image: (ImageReadWriter formFromFileNamed: aPath).
	self image: (self image scaledToSize: (self image extent * 0.12195121951)).