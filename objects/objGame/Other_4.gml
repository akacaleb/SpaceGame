/// @description level start

if room == rmRoom
{
	var xx = random_range(430, room_width - 430);
	var yy = random_range(270, room_height - 270);
	instance_create_layer(xx, yy, "Instances", objPlayerSpawn);
	//scrSpawnOffCamera(objRaider, 2);
	//scrSpawnOffCamera(objHunter, 1);
}

if room == rmRoom
{
	alarm[0] = 60;
}