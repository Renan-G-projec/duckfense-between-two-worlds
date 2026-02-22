// Ad Maiorem Dei Gloriam

function changeCameraTarget(_start, _target) {
	with (objCamera) {
		camera_set_view_target(view_camera[0], self);
		active = true;
		target = _target;
		setPosition(_start.x, _start.y);
	}
};
		