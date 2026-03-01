// Ad Maiorem Dei Gloriam!

#region Variables

people = [
	"[fa_center][fntMenu][scale,1.2]Pessoas Envolvidas\n ",
	"[fa_center][fntMenu]Renan - [wave][c_lime]Programador",
	"[fa_center][fntMenu]Brunow - [wave][c_blue]Artista"
]

middleX = display_get_gui_width() / 2;
middleY = display_get_gui_height() / 2;

#endregion

#region Methods

drawCredits = function() {
	
	draw_sprite_ext(sprTransition, 0, 0, 0, 20, 20, 0, 0, 0.7);
	
	for (i = 0; i < 3; i++) {
		scribble(people[i]).draw(middleX, 100 + i * 40 - 20 + (i == 0 ? 0 : 20));
	}
};

#endregion