/// @description Control rooms

highScore = highscore_value(1);
highscore_add("", score);


if (keyboard_check_pressed(vk_space) || gamepad_button_check_pressed(0, gp_face1)) && room != rmRoom
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

	if (lives <= 0)
	{
		room_goto(rmGameOver);
	}
}