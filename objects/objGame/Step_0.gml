/// @description Control rooms
randomize();

highScore = highscore_value(1);
highscore_add("", score);


if (keyboard_check_pressed(vk_enter) || gamepad_button_check_pressed(0, gp_start)) && room != rmRoom
{
		switch (room)
		{
			case rmStart:
				room_goto(rmRoom);
			break;
			
			case rmGameOver:
				game_restart();
			break;
		}
}

	
if (room == rmRoom)
{

	if !instance_exists(objPlayerOne) && !instance_exists(objPlayerSpawn){
		waitSpawn--
		if waitSpawn <= 0{
			var xx = random_range(430, room_width - 430);
			var yy = random_range(270, room_height - 270);
			instance_create_layer(xx, yy, "Instances", objPlayerSpawn);
		}
	}
	
	
	if (lives <= 0)
	{
		waitSpawn--
		if waitSpawn <= 0{
		room_goto(rmGameOver);
		}
	}
}