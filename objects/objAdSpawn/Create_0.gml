// Ad Maiorem Dei Gloriam!

#region Variables

spawnChance = 0.2;
spawnChanceIncrease = 0.04;
spawnChanceCurrent = spawnChance;
spawnTime = FPS * 2;
spawnTimer = spawnTime;

adversariesCount = floor(1 + random_range(1, 2) * global.adversariesCount);

#endregion

#region Methods

updateTimer = function() {
	
	if (adversariesCount <= 0) return;
	
	if (spawnTimer > 0) {
		spawnTimer--;
	} else {
		spawnTimer = spawnTime;
		checkSpawn();
	}
};

checkSpawn = function() {
	var _test = random(1) <= spawnChanceCurrent;
	if (!_test) {
		spawnChanceCurrent += spawnChanceCurrent;
		return;
	}
	
	var _adv = global.adversariesList[irandom_range(0, array_length(global.adversariesList) - 1)];
	spawnChanceCurrent = spawnChanceCurrent;
	createAdv(_adv);
};

createAdv = function(_adv) {
	
	var _otherAdv = instance_create_layer(x, y, "Adversary", _adv);
	
	if (_otherAdv.dimension != global.currentDimension) _otherAdv.image_alpha = global.transparency;
	
	adversariesCount--;
};

#endregion