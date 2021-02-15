/// @description controls game



if room = rmRoom && lives <= 0 && !instance_exists(objPlayerOne)
{
	highscore_add("", score);
    score = 0;
	
	if keyboard_check_pressed(vk_space) || gamepad_button_check_pressed(0, gp_face1)
	{
		game_restart();
	}
	
} else if room = rmRoom && !instance_exists(objPlayerOne)
{
	if keyboard_check_pressed(vk_space) || gamepad_button_check_pressed(0, gp_face1)
	{
		instance_create_layer(room_width/2, room_height/2, "Instances", objPlayerOne);
	}
}



if rockSpawner <= 5
{
	instance_create_layer(irandom_range(0, room_width), irandom_range(0, room_height), "Instances", choose(objLargeRock, objMediumRock, objSmallRock));
	++ rockSpawner;
}