drawing
drawPauseButton
	| pauseButton |
	pauseButton := SimpleButtonMorph new
    label: 'Pause';
    target: self ;
    actionSelector: #pause;
    color: Color green. 
	pauseButton position: tableMorph bounds topRight + (0@32).
	pauseMorph := pauseButton.
	self addMorph: pauseButton