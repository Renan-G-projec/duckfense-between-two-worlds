// Ad Maiorem Dei Gloriam!
event_inherited();

#region Gun Boomerang Status

distanceBullet = 20;

playerRef = noone;
onGrndRef = objGunBoomerangOnGround
bullet = objBulletBoomerang;
isVisible = true;

dimension = DIMENSIONS.GRAYWORLD;

#endregion

#region Specified Methods

shoot = function() {
	if (!isVisible) return;
	if (ammo > 0) {
		var _x = x + lengthdir_x(distanceBullet, image_angle);
		var _y = y + lengthdir_y(distanceBullet, image_angle);
		
		isVisible = false;
		visible = false;
		var _bullet = instance_create_layer(_x, _y, "Bullets", bullet);
		_bullet.speed = _bullet.velMag * 4;
		_bullet.direction = image_angle;
		_bullet.dimension = playerRef.dimension;
	}
}

#endregion