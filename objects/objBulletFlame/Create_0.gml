// Ad Maiorem Dei Gloriam
event_inherited()

#region Bullet Status

speed = 4;
damage = 0.04;

#endregion

#region Variables

active = true;
activeTime = FPS * 0.4;
activeTimer = activeTime;

minVelocity = 2;
velMagnitude = 0.1;

#endregion

#region Methods

updateTimer = function() {
	if (!active) return;
	if (activeTimer > 0) {
		activeTimer--;
	} else {
		active = false;
	};
}

updateAlpha = function() {
	if (active) return;
	
	image_alpha -= 0.04;
	
	if (image_alpha <= 0.1) instance_destroy();
};


updateVelocity = function() {
	speed = lerp(speed, minVelocity, velMagnitude);
};
#endregion