/// @description level start

if room == rmRoom
{
	instance_create_layer(room_width/2, room_height/2, "Instances", objPlayerOne);
	scrSpawnOffCamera(objRocks, 40);

	alarm[0] = 60;
}