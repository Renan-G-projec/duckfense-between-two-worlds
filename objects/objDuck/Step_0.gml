// Ad Maiorem Dei Gloriam!

if (global.currentDimension != dimension) exit;

updateInputs();
updateVelocity();
updateCollisions();
updatePosition();
updateSprite();

updateDepth();

updateTimers();
updateCoilEffect(dir);