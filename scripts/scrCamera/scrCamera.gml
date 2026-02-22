// Ad Maiorem Dei Gloriam

function changeCameraTarget(_start, _target) {
	with (objCamera) {
		camera_set_view_target(view_camera[0], self);
		active = true;
		target = _target;
		setPosition(_start.x, _start.y);
	}
	
	var _cameraWidth = camera_get_view_width(view_camera[0]);
	var _cameraHeigth = camera_get_view_height(view_camera[0]);
	camera_set_view_border(view_camera[0], _cameraWidth / 2 - 1, _cameraHeigth / 2 - 1);
};
		