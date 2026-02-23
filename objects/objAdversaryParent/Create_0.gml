// Ad Maiorem Dei Gloriam!
event_inherited();

#region Variables

healthPoints = 1;
damageDistX = 1.4;
damageDistY = 0.7;

collisionList = [objCollision];

inDamage = false;
damageTime = FPS * 0.4;
damageTimer = damageTime;

dir = 1;

playerRef = getPlayerDimension(dimension);

#endregion

#region Methods

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
	activateCoilEffect(self, damageDistX, damageDistY);
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

#endregion

#region Initializing Things

initCoilEffect(0.14);

#endregion