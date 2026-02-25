// Ad Maiorem Dei Gloriam
event_inherited();

#region Variables

bullet = noone;
stopDistance = 64;
parentUpdateRef = updatePosition;

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
	instance_create_layer(x, y, "Bullets", bullet);
	bullet.direction = _direction;
	bullet.speed = _projVel;
}

#endregion