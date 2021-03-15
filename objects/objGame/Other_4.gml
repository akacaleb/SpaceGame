/// @description level start

if room == rmStart
{
	audio_sound_gain(sndMainMenu, 0.5, 1);
	audio_play_sound(sndMainMenu, 1, true)	
} else {audio_stop_all()}

if room == rmRoom
{
	var xx = random_range(430, room_width - 430);
	var yy = random_range(270, room_height - 270);
	instance_create_layer(xx, yy, "Instances", objPlayerSpawn);
	scrSpawnOffCamera(objRocks, 30);
}