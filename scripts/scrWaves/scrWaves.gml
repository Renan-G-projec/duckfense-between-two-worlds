// Ad Maiorem Dei Gloriam!

global.currentWave = 0;

global.adversariesCount = 2;

global.adversariesList = [objAdBee, objAdSlime]

function updateWave() {
	global.currentWave++;
	global.adversariesCount += log2(global.currentWave);
}

function updateAdversariesCount() {
	global.adversariesCount += global.wave * 2;
}

function checkUpdateWave() {
	if (instance_number(objAdversaryParent) <= 0) updateWave();
}