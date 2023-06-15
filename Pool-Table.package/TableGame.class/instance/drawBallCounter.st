drawing
drawBallCounter
	counterMorph := SimpleButtonMorph new
    label: ('Balls pitted: {1}' format: {inCounter});
    color: Color white . 
	counterMorph position: tableMorph bounds topRight + (0@60).
	self addMorph: counterMorph