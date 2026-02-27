// Ad Maiorem Dei Gloriam!
event_inherited();

#region Variables

dimension = 0;
velocity = 0;

healthPoints = 1;
damageDistX = 1.4;
damageDistY = 0.7;

collisionList = [objCollision];

inDamage = false;
damageTime = FPS * 0.4;
damageTimer = damageTime;

dir = 1;

damageInTouch = 1;
touch = false;
touchTime = FPS * 2;
touchTimer = touchTime;

playerRef = 0;

#endregion

#region Methods

updatePosition = function() {
	var _dx = lengthdir_x(velocity, direction);
	var _dy = lengthdir_y(velocity, direction);
	
	// Separating axis for better precision
	move_and_collide(_dx, 0, collisionList, 14);
	move_and_collide(0, _dy, collisionList, 14);
};

pointToPlayer = function() {
	direction = point_direction(x, y, playerRef.x, playerRef.y);
};

takeDamage = function(_damage) {
	healthPoints -= _damage;
	if (healthPoints <= 0) {
		die();
		return;
	}
	
	inDamage = true;
	// Reset the damage Timer
	damageTimer = damageTime;
	activateCoilEffect(self, damageDistX * dir, damageDistY);
}

updateDamageTimer = function() {
	if (!inDamage) return;
	if (damageTimer > 0) {
		damageTimer--;
	} else {
		damageTimer = damageTime;
		inDamage = false;
	}
}

updateTouchTimer = function() {
	if (!touch) return;
	if (touchTimer > 0) {
		touchTimer--;
	} else {
		touchTimer = touchTime;
		touch = false;
	}
}

updateDir = function() {
	if (direction < 90 || direction > 270) {
		dir = 1;
	} else {
		dir = -1;
	};
};
	
updateSpriteDirection = function() {
	updateDir();
	
	if (dir != sign(image_xscale)) {
		xscale *= -1;
	}
	
	image_xscale = dir;
};

checkPlayerNear = function() {
	if (touch) return;
	if (place_meeting(x, y, playerRef)) {
		playerRef.takeDamage(damageInTouch);
		touch = true;
	}
};
	
die = function() {
	instance_destroy();
}

#endregion

#region Initializing Things

initCoilEffect(0.14);

#endregion