// Ad Maiorem Dei Gloriam!

if (global.currentDimension != DIMENSIONS.OVERWORLD) exit;

updateInputs();
updateVelocity();
updateCollisions();
updatePosition();
updateSprite();

updateTimers();
updateCoilEffect();