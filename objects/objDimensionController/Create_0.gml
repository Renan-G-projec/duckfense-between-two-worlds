// Ad Maiorem Dei Gloriam!

#region Methods

updateDimension = function() {
	if (!keyboard_check_pressed(ord("E"))) return;
	if (global.currentDimension == DIMENSIONS.OVERWORLD) {
		global.currentDimension = DIMENSIONS.GRAYWORLD;
	} else {
		global.currentDimension = DIMENSIONS.OVERWORLD;
	}
};

#endregion