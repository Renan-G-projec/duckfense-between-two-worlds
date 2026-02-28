// Ad Maiorem Dei Gloriam!
event_inherited();

#region Slime Status

velocity = 0.2;
minVel = 0.05;
maxVel = 0.7;
effectMag = 0.07;

movState = MovementState.FAST;

dimension = DIMENSIONS.GRAYWORLD;
damageInTouch = 2;
damageTime = FPS * 0.8;
playerRef = getPlayerDimension(dimension);

collisionList = [objCollision, objCollisionWater];

// To create a special movement effect
enum MovementState {
	FAST,
	SLOW
};

#endregion

#region Methods

updateState = function() {
	if (velocity <= minVel + 0.1) {
		movState = MovementState.FAST;
	} else if (velocity >= maxVel - 0.1) {
		movState = MovementState.SLOW;
	}
};

updateVelocityByState = function() {
	switch (movState) {
		case MovementState.FAST:
			velocity = lerp(velocity, maxVel, effectMag);
			break;
		case MovementState.SLOW:
			velocity = lerp(velocity, minVel, effectMag);
			break;
	}
};

#endregion