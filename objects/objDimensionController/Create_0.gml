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
}

focusDimension = function(_dimension) {
	with (objEntityParent) {
		if (dimension != _dimension) {
			image_alpha = global.transparency;
		} else {
			image_alpha = 1
		};
	}
};

getPlayerDimension = function(_dimension) {
	with (objDuckParent) {
		if (dimension == _dimension) {
			return self;
		}
	}
};

#endregion

#region Initial Config

focusDimension(global.currentDimension);

#endregion