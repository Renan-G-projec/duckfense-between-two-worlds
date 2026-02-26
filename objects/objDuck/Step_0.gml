// Ad Maiorem Dei Gloriam!


if (global.currentDimension != dimension) {
	updateTimers();
	state = STATE.IDLE;
	updateSpriteIndex();
	updateCoilEffect(dir);
	exit;
}

updateInputs();
updateVelocity();
updatePosition();
updateState();
updateSpriteDir();
updateSpriteIndex();

updateDepth();
updateTimers();
updateCoilEffect(dir);