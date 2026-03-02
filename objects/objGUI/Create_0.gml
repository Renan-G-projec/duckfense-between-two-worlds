// Ad Maiorem Dei Gloriam

#region Variables

frame = 0;

#endregion

#region Methods

updateFrame = function() {
	frame++;
}

drawStats = function() {
	draw_set_font(fntMenu);
	draw_text_transformed(10, 20, "Onda: " + string(global.currentWave), 0.7, 0.7, 0);
	draw_text_transformed(10, 57, "Inimigos Restantes: " + string(instance_number(objAdversaryParent)), 0.7, 0.7, 0);
	draw_text_transformed(10, 57+37, "Pontos: " + string(global.pontuation), 0.7, 0.7, 0);
	
}

#endregion