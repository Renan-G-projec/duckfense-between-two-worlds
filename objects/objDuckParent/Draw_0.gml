// Ad Maiorem Dei Gloriam!
drawCoilEffect();

if (invencible) {
	shader_set(shDamage);
	var _alpha = invencible_timer / invencible_time;
	draw_sprite_ext(sprite_index, image_index, x, y, xscale, yscale, image_angle, c_white, _alpha);
	shader_reset();
}