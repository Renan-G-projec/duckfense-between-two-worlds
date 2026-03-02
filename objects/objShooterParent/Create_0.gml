// Ad Maiorem Dei Gloriam
event_inherited();

#region Variables

bullet = noone;
stopDistance = 64;
parentUpdateRef = updatePosition;

timeShoot = FPS * 0.8;
timerShoot = timeShoot;

bulletVel = 4;
#endregion

#region Methods

updatePosition = function() {
	parentUpdateRef();
	
	if (distance_to_object(playerRef) <= stopDistance) {
		velocity = lerp(velocity, 0, 0.1);
	} else {
		velocity = 1;
	}
}

shoot = function(_direction, _projVel) {
	var _bullet = instance_create_layer(x, y, "Bullets", bullet);
	_bullet.direction = _direction;
	_bullet.image_angle = _direction;
	_bullet.speed = _projVel;
}

updateTimerShoot = function() {
	if (timerShoot >= 0) {
		timerShoot--;
	} else {
		timerShoot = timeShoot;
		shoot(point_direction(x, y, playerRef.x, playerRef.y), bulletVel);
	}
};
#endregion