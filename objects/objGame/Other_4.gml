/// @description level start

if room == rmRoom
{
	instance_create_layer(room_width/2, room_height/2, "Instances", objPlayerSpawn);
	instance_create_layer(room_width/2, room_height/2, "Instances", objPlayerOne);
	scrSpawnOffCamera(objRaider, 8);
	scrSpawnOffCamera(objHunter, 5);
	scrSpawnOffCamera(objBrute, 3);
}

if room == rmRoom
{
	alarm[0] = 60;
}