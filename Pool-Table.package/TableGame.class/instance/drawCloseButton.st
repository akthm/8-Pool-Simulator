drawing
drawCloseButton
	| closeButton |
	closeButton := SimpleButtonMorph new
    label: 'Close';
    target: self ;
    actionSelector: #close;
    color: Color red. 
	closeButton position: tableMorph bounds topRight  + (0@2).
	self addMorph: closeButton