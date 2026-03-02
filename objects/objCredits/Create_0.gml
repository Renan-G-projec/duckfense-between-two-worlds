// Ad Maiorem Dei Gloriam!

#region Variables

people = [
	"[fa_center][fntMenu][scale,1.2]Pessoas Envolvidas\n ",
	"[fa_center][fntMenu]Renan - Programador",
	"[fa_center][fntMenu]Brunow - Artista"
]

sounds = [
	"[fntMenu][scale,1.2][fa_center]Sons\n",
	"[fntMenu][scale,0.7][fa_center]Flamethrower Pugaeme - ([c_aqua]freesound.com[/color])",
	"[fntMenu][scale,0.7][fa_center]swoosh47.wav kwahmah_02 - ([c_aqua]freesound.com[/color])",
	"[fntMenu][scale,0.7][fa_center]PLAYIN’ IN THE DIRT Eric Matyas - ([c_aqua]freesound.com[/color])",
	"[fntMenu][scale,0.7][fa_center]Wicked Dreams Eric Matyas - ([c_aqua]freesound.com[/color])"
]

middleX = display_get_gui_width() / 2;

#endregion

#region Methods

drawCredits = function() {
	
	draw_sprite_ext(sprTransition, 0, 0, 0, 20, 20, 0, 0, 0.7);
	
	for (i = 0; i < 3; i++) {
		scribble(people[i]).draw(middleX, 100 + i * 40 - 20 + (i == 0 ? 0 : 20));
	}

	for (i = 0; i < 5; i++) {
		scribble(sounds[i]).draw(middleX, 270 + i * 40 - 20 + (i == 0 ? 0 : 20));
	}
	
	scribble("[fntMenu][fa_center][scale,1.2]JMJ - AMDG").draw(middleX, 650);
	scribble("[fntMenu][wheel][c_lime]Sair").draw(40, 650);
};

checkExit = function() {
	if (keyboard_check_pressed(vk_enter)) room_goto(rmMenu);
};

#endregion