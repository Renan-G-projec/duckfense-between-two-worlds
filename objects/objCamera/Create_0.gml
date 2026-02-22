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
	if (abs(x - target.x) <= 7 && abs(y - target.y) <= 7) return true;
};

#endregion