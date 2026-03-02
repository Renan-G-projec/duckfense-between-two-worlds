// Ad Maiorem Dei Gloriam!

global.currentWave = 0;

global.adversariesCount = 1;

global.adversariesList = [objAdBee, objAdSlime]

function updateWave() {
	global.currentWave++;
	global.adversariesCount += log2(global.currentWave);
	
	with (objAdSpawn) {
		adversariesCount = floor(1 + random_range(1, 2) * global.adversariesCount);
	}
}

function updateAdversariesCount() {
	global.adversariesCount += global.wave * 2;
}

function checkUpdateWave() {
	if (instance_number(objAdversaryParent) <= 1) updateWave();
}