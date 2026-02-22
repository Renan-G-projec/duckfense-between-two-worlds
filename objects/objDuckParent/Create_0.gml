// Ad Maiorem Dei Gloriam!
event_inherited();

#region Macros and Enums

#macro MAX_VEL 2

enum STATE {
	IDLE,
	RUN
};

#endregion

#region Variables

healthPoints = 10;

velocity = {
	xVel: 0,
	yVel: 0
};

inputs = {
	right: false,
	left: false,
	down: false,
	up: false
};

state = STATE.IDLE;

collisionList = [objCollision];

invencible = false;
invencible_time = FPS * 0.2;
invencible_timer = invencible_time;

dir = 1;

#endregion

#region Methods

updateInputs = function() {
	inputs.right = keyboard_check(ord("D"));
	inputs.left = keyboard_check(ord("A"));
	inputs.down = keyboard_check(ord("S"));
	inputs.up = keyboard_check(ord("W"));
};

updateVelocity = function() {
	velocity.xVel = (inputs.right - inputs.left) * MAX_VEL;
	velocity.yVel = (inputs.down - inputs.up) * MAX_VEL;
};

updateCollisions = function() {
	// Checking Collisions
	var _colX = instance_place(x + velocity.xVel, y, collisionList);
	var _colY = instance_place(x, y + velocity.yVel, collisionList);
	
	// HORIZONTAL COLLISION
	if (_colX) {
		
		// RIGHT
		if (velocity.xVel > 0) {
			x = _colX.bbox_left - (bbox_right - x);
		}
		
		// LEFT
		if (velocity.xVel < 0) {
			x = _colX.bbox_right + (x - bbox_left);
		}
		
		// We need to reset the velocity
		velocity.xVel = 0;

	}
	
	// VERTICAL COLLISION
	if (_colY) {
	
		// DOWN
		if (velocity.yVel > 0) {
			y = _colY.bbox_top - (bbox_bottom - y);
		}
		
		// UP
		if (velocity.yVel < 0) {
			y = _colY.bbox_bottom + (y - bbox_top);
		}
		
		// We need to reset the velocity
		velocity.yVel = 0;
		
	}
};

updatePosition = function() {
	x += velocity.xVel;
	y += velocity.yVel;
};

updateState = function() {};

updateTimers = function() {
	// Damage Timer
	if (invencible) {
		if (invencible_timer <= 0) {
			invencible_timer = invencible_time;
			invencible = false;
		} else {
			invencible_timer--;
		}
	}
};

takeDamage = function(_damage) {
	if (invencible) return;
	healthPoints -= _damage;
	
	invencible = true;
};

updateSprite = function() {
	if (velocity.xVel != 0) {
		image_xscale = sign(velocity.xVel)
		// If changed, we invert the xscale
		if (dir != image_xscale) {
			xscale *= -1;
		}
		dir = image_xscale;
	}
};

updateDepth = function() {
	depth = -y;
};

#endregion

#region Initializing dependencies

initCoilEffect(0.1);
depth = -y;
#endregion