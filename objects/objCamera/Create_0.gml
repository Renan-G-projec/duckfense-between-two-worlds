// Ad Maiorem Dei Gloriam!

#region Macros

#macro CAM_DISTANCE_NOT_FOLLOW 24

#endregion

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

// Checks if the camera is near the player
checkTargetDistance = function() {
	if (abs(x - target.x) <= CAM_DISTANCE_NOT_FOLLOW && abs(y - target.y) <= CAM_DISTANCE_NOT_FOLLOW) return true;
};

deactivate = function() {
	camera_set_view_target(view_camera[0], target);
	camera_set_view_border(view_camera[0], 64, 64);
	active = false;
}

#endregion