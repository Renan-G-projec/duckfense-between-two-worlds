// Ad Maiorem Dei Gloriam!

#region Variables

target = noone;
active = false;
velocity = global.cameraVel;

#endregion

#region Methods

setPosition = function (_x, _y) {
	x = _x;
	y = _y;
};

updatePosition = function() {
	x = lerp(x, target.x, global.cameraVel);
	y = lerp(y, target.y, global.cameraVel);
};

checkTargetDistance = function() {
	if (abs(x - target.x) <= 4 && abs(y - target.y) <= 4) return true;
};

deactivate = function() {
	camera_set_view_target(view_camera[0], target);
	camera_set_view_border(view_camera[0], 32, 32);
	active = false;
}

#endregion