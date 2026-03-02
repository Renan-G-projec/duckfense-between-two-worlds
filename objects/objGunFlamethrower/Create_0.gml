// Ad Maiorem Dei Gloriam!
event_inherited();

#region Flamethrower status

distanceBullet = 36;
playerRef = noone;
onGrndRef = objGunFlamethrowerGrd;
bullet = objBulletFlame;

diffuse = 20;

#endregion

#region Specified Methods

shoot = function() {
	if (ammo > 0) {
		var _x = x + lengthdir_x(distanceBullet, image_angle);
		var _y = y + lengthdir_y(distanceBullet, image_angle);
		
		var _bullet = instance_create_layer(_x, _y, "Bullets", bullet);
		_bullet.direction = image_angle + irandom_range(-diffuse, diffuse);
		_bullet.dimension = playerRef.dimension;
		
	}
}

#endregion