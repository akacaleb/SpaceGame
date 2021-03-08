/// @description draw stuff
switch (room)
{
	case rmRoom:
		
		for(var i = 0; i < lives - 1; i++)
		{
			draw_sprite_ext(sprPlayerOne, 0, 36 + 40 *  i, 36, .50, .50, 90 , image_blend, image_alpha);
		}
		draw_set_halign(fa_center);
		draw_text(global.cameraWidth/2, 20, "Score: " +string(score));
		draw_set_halign(fa_right);
		draw_text(global.cameraWidth - 20, 20, "High Score: " +string(highScore));
		draw_set_halign(fa_center);
	break;
	
	case rmStart:
		draw_set_halign(fa_center); // center justify it
		var c = c_yellow // variable to make it yellow
		draw_text_transformed_color(global.cameraWidth/2, 100, "Test Space Game", 3, 3, 0, c, c, c, c, 1);
		draw_text(global.cameraWidth/2, 200,
		@"W or Right Trigger: Thrust
		S or Left Trigger: Reverse
		Left/Right or Left Stick: Rotate
		Q/E or LB/RB: Strafe
		Shift or B: Brake
		Space or A: Shoot
		
		>> Press ENTER or START to start <<
		"
		);
		draw_set_halign(fa_left); //reset the center justify to left justify
	break;
	
	
	case rmGameOver:
		draw_set_halign(fa_center); // center justify it
		var c = c_red // variable to make it yellow
		draw_text_transformed_color(global.cameraWidth/2, 100, "Game Over", 3, 3, 0, c, c, c, c, 1);
		draw_text(global.cameraWidth/2, 200,"Final Score: " +string(score));
		draw_text(global.cameraWidth/2, 225,"Kills: " +string(objGame.totalKills));
		if objGame.totalKills && objGame.shotsFired >= 1
		{
			draw_text(global.cameraWidth/2, 250,"Shots: " +string(objGame.shotsFired));
			draw_text(global.cameraWidth/2, 275,"Accuracy: " +string_format(((objGame.totalKills/objGame.shotsFired)*100), 3, 0) +"%");
		}
		draw_text(global.cameraWidth/2, 350,"High Score: " +string(highScore));
		draw_text(global.cameraWidth/2, 450,"Press ENTER or START to restart");
		draw_set_halign(fa_left); //reset the center justify to left justify
	break;
}