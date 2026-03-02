// Ad Maiorem De Gloriam!

if (dimension = DIMENSIONS.GRAYWORLD) {
	var _prevShader = shader_current();
	shader_set(shGrayscale)
	drawCoilEffect();
	shader_set(_prevShader);
} else {
	drawCoilEffect();
};