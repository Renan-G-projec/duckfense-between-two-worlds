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
	x: 0,
	y: 0
};

inputs = {
	right: false,
	left: false,
	down: false,
	up: false
};

state = STATE.IDLE;

collisionList = [];

#endregion

#region Methods

updateInputs = function() {
	inputs.right = keyboard_check(ord("D"));
	inputs.left = keyboard_check(ord("A"));
	inputs.down = keyboard_check(ord("S"));
	inputs.up = keyboard_check(ord("W"));
};

updateVelocity = function() {
	velocity.x = (inputs.right - inputs.left) * MAX_VEL;
	velocity.y = (inputs.down - inputs.up) * MAX_VEL;
};

updateCollisions = function() {
	// Checking Collisions
	var _colX = instance_place(x + velocity.x, y, collisionList);
	var _colY = instance_place(x, y + velocity.y, collisionList);
	
	// HORIZONTAL COLLISION
	if (_colX) {
		
		// RIGHT
		if (velocity.x > 0) {
			x = _colX.bbox_left - (bbox_right - bbox_left);
		}
		
		// LEFT
		if (velocity.x < 0) {
			x = _colX.bbox_right;
		}
		
		// We need to reset the velocity
		velocity.x = 0;

	}
	
	// VERTICAL COLLISION
	if (_colY) {
	
		// DOWN
		if (velocity.y > 0) {
			y = _colY.bbox_top - (bbox_bottom - bbox_top);
		}
		
		// UP
		if (velocity.y < 0) {
			y = _colY.bbox_bottom;
		}
		
		// We need to reset the velocity
		velocity.y = 0;
		
	}
};

updatePosition = function() {
	x += velocity.x;
	y += velocity.y;
};

updateState = function() {};

updateSprite = function() {
	if (velocity.x != 0) {
		image_xscale = sign(velocity.x);
	}
};

#endregion

#region Initializing dependencies

initCoilEffect(0.1);

#endregion