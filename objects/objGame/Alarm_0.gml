/// @description spawn rocks

if room != rmRoom
{
	exit;	
}

scrSpawnOffCamera(objRocks, 5);

alarm[0] = 1 * room_speed