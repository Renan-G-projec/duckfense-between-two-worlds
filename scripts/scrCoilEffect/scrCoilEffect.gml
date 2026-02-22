// Ad Maiorem Dei Gloriam!

function initCoilEffect(_magnitude) {
	magnitude = _magnitude;
	xscale = image_xscale;
	yscale = image_yscale;
}

function activateCoilEffect(_target = self, _xscale = 1, _yscale = 1) {
	with (_target) {
		xscale = _xscale;
		yscale = _yscale;
	}
}

function updateCoilEffect(_targetx = 1, _targety = 1) {
	xscale = lerp(xscale, _targetx, magnitude);
	yscale = lerp(yscale, _targety, magnitude);
}

function drawCoilEffect() {
	draw_sprite_ext(sprite_index, image_index, x, y, xscale, yscale, image_angle, c_white, image_alpha);
}