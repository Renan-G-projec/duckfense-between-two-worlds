// Ad Maiorem Dei Gloriam!

#region Variables

currentIndex = 0;

options = ["[fntMenu]Jogar", "[fntMenu]Créditos", "[fntMenu]Sair"];
rooms = [rmTests, rmCredits]
offsets = [0, 0, 0]

numOptions = array_length(options);

borderX = 70;
maxBorderX = 48;

distanceY = 100;

screenMiddle = display_get_gui_height() / 2;
pair = array_length(options) % 2 == 0;

magOffset = 0.1;
commonOffset = 40;
colorSel = c_lime;

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
	
	for (i = 0; i < numOptions; i++) {
		var current = i == currentIndex;
		if (current) {
			offsets[i] = commonOffset;
		} else {
			offsets[i] = lerp(offsets[i], 0, magOffset);
		};
		
		scribble((current ? "[wheel]" : "") + options[i] ).blend(current ? colorSel : c_white).draw(borderX + offsets[i], (screenMiddle - numOptions / 2 * distanceY)  + i * distanceY);
	}
};

checkClick = function() {
	if (keyboard_check_pressed(vk_enter)) {
		if (currentIndex == 2) { 
			game_end();
			return;
		}
		room_goto(rooms[currentIndex]);
	}
};

#endregion

#region Initializing Things

if (!global.fontSetted) {
	scribble_font_scale("fntMenu", 0.7);
	global.fontSetted = true;
};

#endregion