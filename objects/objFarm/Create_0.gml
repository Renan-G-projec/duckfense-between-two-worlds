// Ad Maiorem Dei Gloriam!

depth = -y;

global.respawnX = x + sprite_width / 2;
global.respawnY = y + 2;

#region Methods

updateSprite = function() {
	if (global.farmLifes < 3) {
		sprite_index = sprFarmDay2;
	}
	if (global.farmLifes < 2) {
		sprite_index = sprFarmDay3;
	}
	
	if (global.farmLifes <= 0) {
		room_goto(rmMenu);
	}
}

#endregion