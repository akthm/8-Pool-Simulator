initialize-release
initializeWithPosition: aPoint extent: aExtent inner: innerBool
	super initialize.
	self color: Color transparent  .
	self extent:aExtent.
	self borderWidth: 0.
	self position: aPoint.
	inner := innerBool.
	((self extent) x > (self extent) y)
	 	ifTrue: [vertical := false] 
		ifFalse: [vertical := true].