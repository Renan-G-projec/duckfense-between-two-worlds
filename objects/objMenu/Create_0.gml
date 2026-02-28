// Ad Maiorem Dei Gloriam!

#region Variables

currentIndex = 0;

options = ["Jogar", "Tutorial", "Configurações", "Créditos"];
rooms = [rmTests]
offsets = [0, 0, 0, 0]

numOptions = array_length(options);

borderX = 70;
maxBorderX = 48;

distanceY = 80;

font_height = 20;

screenMiddle = display_get_gui_height() / 2;
pair = array_length(options) % 2 == 0;

magOffset = 0.1;
commonOffset = 40;
colorSel = c_fuchsia;

#endregion

#region Methods

updateIndex = function() {
	if (keyboard_check_pressed(vk_up)) {
		if (currentIndex <= 0) return;
		currentIndex--;
	}
	
	if (keyboard_check_pressed(vk_down)) {
		if (currentIndex >= numOptions - 1) return;
		currentIndex++;
	}
};

drawOption = function() {
	draw_set_font(fntMenu);
	
	for (i = 0; i < numOptions; i++) {
		if (i == currentIndex) {
			draw_set_colour(colorSel);
			offsets[i] = commonOffset;
		} else {
			offsets[i] = lerp(offsets[i], 0, magOffset);
		};
		draw_text_ext_transformed(borderX + offsets[i], (screenMiddle - numOptions / 2 * distanceY)  + i * distanceY, options[i], 1, 1000, 1.4, 1.4, 0);
		draw_set_colour(c_white);
	}
	draw_set_font(-1);
};

#endregion