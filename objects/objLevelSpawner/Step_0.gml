if room == !rmRoom {instance_destroy()}

respawnRate++

if respawnRate >= levelHard && score >= difficulty.levelTen
{
	scrSpawnOffCamera(objRocks, 5);
	scrSpawnOffCamera(objRaider,5);
	scrSpawnOffCamera(objHunter,5);
	scrSpawnOffCamera(objBrute, 5);
	respawnRate = 0;
}

if respawnRate >= levelHard && score >= difficulty.levelNine && score < difficulty.levelTen
{
	scrSpawnOffCamera(objRocks, 4);
	scrSpawnOffCamera(objRaider,5);
	scrSpawnOffCamera(objHunter,5);
	scrSpawnOffCamera(objBrute, 5);
	respawnRate = 0;
}

if respawnRate >= levelHard && score >= difficulty.levelEight && score < difficulty.levelNine
{
	scrSpawnOffCamera(objRocks, 3);
	scrSpawnOffCamera(objRaider,5);
	scrSpawnOffCamera(objHunter,5);
	scrSpawnOffCamera(objBrute, 5);
	respawnRate = 0;
}
			
if respawnRate >= levelHard && score >= difficulty.levelSeven && score < difficulty.levelEight
{
	scrSpawnOffCamera(objRocks, 2);
	scrSpawnOffCamera(objRaider,5);
	scrSpawnOffCamera(objHunter,5);
	scrSpawnOffCamera(objBrute, 4);
	respawnRate = 0;
}

if respawnRate >= levelHard && score >= difficulty.levelSix && score < difficulty.levelSeven
{
	scrSpawnOffCamera(objRocks, 1);
	scrSpawnOffCamera(objRaider,5);
	scrSpawnOffCamera(objHunter,4);
	scrSpawnOffCamera(objBrute, 3);
	respawnRate = 0;
}

if respawnRate >= levelEasy && score >= difficulty.levelFive && score < difficulty.levelSix
{
	scrSpawnOffCamera(objRocks, 2);
	scrSpawnOffCamera(objRaider,5);
	scrSpawnOffCamera(objHunter,3);
	scrSpawnOffCamera(objBrute, 2);
	respawnRate = 0;
}

if respawnRate >= levelEasy && score >= difficulty.levelFour && score < difficulty.levelFive
{
	scrSpawnOffCamera(objRocks, 3);
	scrSpawnOffCamera(objRaider,4);
	scrSpawnOffCamera(objHunter,2);
	scrSpawnOffCamera(objBrute, 1);
	respawnRate = 0;
}

if respawnRate >= levelEasy && score >= difficulty.levelThree && score < difficulty.levelFour
{
	scrSpawnOffCamera(objRocks, 4);
	scrSpawnOffCamera(objRaider,3);
	scrSpawnOffCamera(objHunter,1);
	respawnRate = 0;
}

if respawnRate > levelEasy && score >= difficulty.levelTwo && score < difficulty.levelThree
{
	scrSpawnOffCamera(objRocks, 5);
	scrSpawnOffCamera(objRaider,2);
	respawnRate = 0;
}

if respawnRate >= levelEasy && score >= difficulty.levelOne && score < difficulty.levelTwo 
{
	scrSpawnOffCamera(objRocks, 5);
	respawnRate = 0;
}