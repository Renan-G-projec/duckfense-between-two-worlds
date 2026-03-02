// Ad Maiorem Dei Gloriam!

#region Methods

getOtherDimension = function(_dimension) {
	if (global.currentDimension == DIMENSIONS.OVERWORLD) {
		return DIMENSIONS.GRAYWORLD;
	}
	return DIMENSIONS.OVERWORLD;
}

updateDimension = function() {
	if (!keyboard_check_pressed(ord("E"))) return;
	toggleDimension();
	focusDimension(global.currentDimension);
	changeCameraTarget(getPlayerDimension(getOtherDimension(global.currentDimension)), getPlayerDimension(global.currentDimension));
};

toggleDimension = function() {
	global.currentDimension = getOtherDimension(global.currentDimension);
	toggleGrayFilter();
}

toggleGrayFilter = function() {
	if (global.currentDimension == DIMENSIONS.GRAYWORLD) {
		shader_set(shGrayscale);
	} else {
		shader_set(shNormal);
	}
};

focusDimension = function(_dimension) {
	with (objEntityParent) {
		if (dimension != _dimension) {
			image_alpha = global.transparency;
		} else {
			image_alpha = 1
		};
	}
};

#endregion