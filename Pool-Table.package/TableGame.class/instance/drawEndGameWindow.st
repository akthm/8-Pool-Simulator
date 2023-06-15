drawing
drawEndGameWindow
	| endButton endGamewindow endText replayButton |
	endGamewindow := SystemWindow new 
							setLabel:  'Game Over!'; 
							position: self center;
							extent: 160@100.
							
	endText := TextMorph new contents: 'Game Over!';
							color: Color red;
							position: (endGamewindow position + (10@30)).
							
	endButton := SimpleButtonMorph new 
					position:(endGamewindow position + (10@60));
					target: self;
					label: 'close Game';
					actionSelector: #close;
					color: Color red.
					
	replayButton := SimpleButtonMorph new 
					position:(endGamewindow position + (100@60));
					target: self;
					label: 'replay';
					actionSelector: #replay;
					color: Color green.
	
	endGamewindow addMorph: endText.
	endGamewindow addMorph: endButton.
	endGamewindow addMorph: replayButton.
	self addMorph: endGamewindow