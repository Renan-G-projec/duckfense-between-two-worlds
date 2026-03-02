// Ad Maiorem Dei Gloriam!

if (dimension == DIMENSIONS.GRAYWORLD) {
	shader_set(shGrayscale);
	drawCoilEffect();
	shader_reset();
} else {
	drawCoilEffect();
};