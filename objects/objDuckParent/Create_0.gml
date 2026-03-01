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

collisionList = [objCollision, objCollisionWater];

invencible = false;
invencible_time = FPS * 0.2;
invencible_timer = invencible_time;

dir = 1;

gun = noone;

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

updatePosition = function() {
	move_and_collide(velocity.xVel, 0, collisionList, 14);
	move_and_collide(0, velocity.yVel, collisionList, 14);
};

updateState = function() {
	if (velocity.xVel != 0 || velocity.yVel != 0) {
		state = STATE.RUN;
	} else {
		state = STATE.IDLE;
	}
};

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
	
	if (healthPoints <= 0) die();
	
	invencible = true;
};

updateSpriteDir = function() {
	if (velocity.xVel != 0) {
		image_xscale = sign(velocity.xVel)
		// If changed, we invert the xscale
		if (dir != image_xscale) {
			xscale *= -1;
		}
		dir = image_xscale;
	}
};

updateSpriteIndex = function() {
	switch (state) {
		case STATE.IDLE:
			if (sprite_index != sprPlayerIdle) sprite_index = sprPlayerIdle;
			break;
		case STATE.RUN:
			if (sprite_index != sprPlayerRun) {
				sprite_index = sprPlayerRun;
				image_index = 0;
			};
			break;
		default:
			break;
	}
};

updateDepth = function() {
	depth = -y;
};

applyFilter = function(_drawFn, _filter) {
	var _prevShader = shader_current();
	shader_set(_filter);
	_drawFn();
	shader_set(_prevShader);
};

checkGun = function() {
	if (gun && mouse_check_button(mb_left)) {
		gun.shoot();
	}
};

die = function() {
	global.farmLifes--;
	objFarm.updateSprite();
	respawn();
};

respawn = function() {
	healthPoints = 10;
	x = global.respawnX;
	y = global.respawnY;
}
#endregion

#region Initializing dependencies

initCoilEffect(0.1);
depth = -y;
#endregion