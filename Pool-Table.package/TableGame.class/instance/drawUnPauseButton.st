drawing
drawUnPauseButton
	| UnPauseButton |
	UnPauseButton := SimpleButtonMorph new
    label: 'Unpause';
    target: self ;
    actionSelector: #UnPause;
    color: Color orange. 
	UnPauseButton position: tableMorph bounds topRight + (0@32).
	pauseMorph := UnPauseButton.
	self addMorph: UnPauseButton