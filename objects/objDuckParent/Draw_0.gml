// Ad Maiorem Dei Gloriam!
drawCoilEffect();

if (dimension == DIMENSIONS.GRAYWORLD) {
	applyFilter(drawCoilEffect, shGrayscale);
} else {
	applyFilter(drawCoilEffect, shNormal);
}

if (invencible) {
	var _prevSh = shader_current();
	shader_set(shDamage);
	var _alpha = invencible_timer / invencible_time;
	draw_sprite_ext(sprite_index, image_index, x, y, xscale, yscale, image_angle, c_white, _alpha);
	shader_set(_prevSh);
}
