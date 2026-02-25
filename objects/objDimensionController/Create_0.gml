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
	toggleDimension(global.currentDimension);
	focusDimension(global.currentDimension);
	changeCameraTarget(getPlayerDimension(getOtherDimension(global.currentDimension)), getPlayerDimension(global.currentDimension));
};

toggleDimension = function(_dimension) {
	global.currentDimension = getOtherDimension(_dimension);
	toggleGrayFilter();
}

toggleGrayFilter = function() {
	if (shader_current() != shGrayscale) {
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

#region Initial Config

focusDimension(global.currentDimension);

#endregion