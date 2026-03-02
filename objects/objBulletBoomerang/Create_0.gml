// Ad Maiorem Dei Gloriam
event_inherited();

#region Boomerang Bullet Status

speed = 10;
damage = 0.3;
dimension = DIMENSIONS.GRAYWORLD;

#endregion

#region Variables

returnMag = 0.07;
velMag = 4;
dimension = DIMENSIONS.GRAYWORLD;

returning = false;

memAdversaries = [];
memTimers = [];

betweenTime = FPS * 0.4;
playerRef = getPlayerDimension(dimension);

#endregion

#region Methods

updateVelocity = function() {
	speed = lerp(speed, -velMag * 2.4, returnMag);
};

updateTimers = function() {
	for (i = 0; i < array_length(memTimers); i++) {
		if (memTimers[i] > 0) {
			memTimers[i]--;
		} else {
			array_shift(memTimers);
			array_shift(memAdversaries);
		}
	}
};

addAdv = function(_id) {
	array_push(memAdversaries, _id);
	array_push(memTimers, betweenTime);
};

updateAngle = function() {
	image_angle += velMag;
};

updateToPlayer = function() {
	if (speed >= 0) return;
	direction = point_direction(playerRef.x, playerRef.y, x, y);
};
		

		audio_play_sound(snd_boomerang, 1, false);

#endregion