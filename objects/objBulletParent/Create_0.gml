// Ad Maiorem Dei Gloriam!

#region Variables

damage = 1;
dimension = 0;

#endregion

#region Methods

checkDestroy = function() {
	if (x < 0 || x > room_width || y < 0 || y > room_height) instance_destroy();
};

updateDepth = function() {
	depth = -y;
};

#endregion

#region Initializing Things

initCoilEffect(0.1);
depth = -y;

#endregion