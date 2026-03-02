// Ad Maiorem Dei Gloriam!

drawCoilEffect();

if (inDamage) {
	var _prev = shader_current();
	shader_set(shDamage);
	var _alpha = damageTimer / damageTime;
	draw_sprite_ext(sprite_index, image_index, x, y, xscale, yscale, image_angle, c_white, _alpha);
	shader_set(_prev);
}