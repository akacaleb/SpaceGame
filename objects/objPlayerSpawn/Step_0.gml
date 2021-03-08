if place_meeting(x, y, all)
{
	instance_destroy(objPlayerSpawn);
}
else
{
	if room == rmRoom {
		instance_create_layer(x, y, "Instances", objPlayerOne);
		instance_destroy(objPlayerSpawn);
		objGame.waitSpawn = 0;
		}
}