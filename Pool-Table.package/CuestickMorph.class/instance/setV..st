accessing
setV: aNum
	(aNum < 16 and: aNum > 0) ifTrue:[ v:= aNum].
	self reposition.