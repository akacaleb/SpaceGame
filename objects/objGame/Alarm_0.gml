/// @description spawn rocks

if room != rmRoom
{
	exit;	
}

scrSpawnOffCamera(objRocks, 5);
//scrSpawnOffCamera(objRaider, 1);
//scrSpawnOffCamera(objHunter, 1);
//scrSpawnOffCamera(objBrute, 1);

alarm[0] = 1 * room_speed