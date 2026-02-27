// Ad Maiorem Dei Gloriam!

#region Variables

playerRef = noone;
onGrndRef = noone;
bullet = noone;
dimension = 0;
maxAmmo = 1;
ammo = 1;
recharging = false;
rechargingTime = FPS * 1;
rechargingTimer = rechargingTime;

distanceBullet = 0;

#endregion

#region Methods

updatePosition = function() {
	if (dimension != global.currentDimension) return;
	x = playerRef.x;
	y = playerRef.y - playerRef.centerYOffset;
	
	image_angle = point_direction(x, y, mouse_x, mouse_y);

	image_yscale = (image_angle <= 90 || image_angle >= 270) ? 1 : -1;
};

updateDepth = function() {
	depth = -playerRef.y;
};

shoot = function() {
	if (ammo > 0) {
		var _x = x + lengthdir_x(distanceBullet, image_angle);
		var _y = y + lengthdir_y(distanceBullet, image_angle);
		
		var _bullet = instance_create_layer(_x, _y, "Bullets", bullet);
		_bullet.direction = image_angle;
		_bullet.dimension = playerRef.dimension;
	}
}

#endregion