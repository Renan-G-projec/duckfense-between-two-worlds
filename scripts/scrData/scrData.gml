// Ad Maiorem Dei Gloriam!

#region Geting Game Info

#macro FPS game_get_speed(gamespeed_fps)

#endregion

#region Dimensions

enum DIMENSIONS {
	OVERWORLD,
	GRAYWORLD
}

global.currentDimension = DIMENSIONS.OVERWORLD;
global.farmLifes = 3;
global.respawnX = 0;
global.respawnY = 0;

global.pontuation = 0;

#endregion

#region Configurations 

// Transparency of the other world in game
global.transparency = 0.3;

// Camera transition velocity
global.cameraVel = 0.1;

#endregion
