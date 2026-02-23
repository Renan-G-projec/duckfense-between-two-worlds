// Ad Maiorem Dei Gloriam!

if (global.currentDimension != DIMENSIONS.GRAYWORLD) exit;


updateInputs();
updateVelocity();
updateCollisions();
updatePosition();
updateSprite();

updateDepth();

updateTimers();
updateCoilEffect(dir);