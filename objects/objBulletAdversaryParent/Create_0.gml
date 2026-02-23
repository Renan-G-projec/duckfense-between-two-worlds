// Ad Maiorem Dei Gloriam!

#region Variables

playerCoilX = 0.7;
playerCoilY = 1.4;

damage = 1;
dimension = 0;

#endregion

#region Methods

checkDestroy = function() {
	if (x < 0 || x > room_width || y < 0 || y > room_height) instance_destroy();
};

#endregion