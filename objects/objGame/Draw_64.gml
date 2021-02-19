/// @description draw stuff
switch (room)
{
	case rmRoom:
		
		for(var i = 0; i < lives - 1; i++)
		{
			draw_sprite_ext(sprPlayerOne, 0, 36 + 40 *  i, 36, .75, .75, 90 , image_blend, image_alpha);
		}
		draw_set_halign(fa_center)
		draw_text(objCamera.cameraWidth/2, 20, "Score: " +string(score));
		draw_set_halign(fa_right)
		draw_text(objCamera.cameraWidth - 20, 20, "High Score: " +string(highScore));
		draw_set_halign(fa_center)
	break;
	
	case rmStart:
		draw_set_halign(fa_center); // center justify it
		var c = c_yellow // variable to make it yellow
		draw_text_transformed_color(objCamera.cameraWidth/2, 100, "Test Space Game", 3, 3, 0, c, c, c, c, 1);
		draw_text(objCamera.cameraWidth/2, 200,
		@"Up or Dpad Up: Thrust
		Left/Right or Dpad Left/Right: Rotate
		Space or A: Shoot
		
		>> Press SPACE or A to start <<
		"
		);
		draw_set_halign(fa_left); //reset the center justify to left justify
	break;
	
	
	case rmGameOver:
		draw_set_halign(fa_center); // center justify it
		var c = c_red // variable to make it yellow
		draw_text_transformed_color(room_width/2, 150, "Game Over", 3, 3, 0, c, c, c, c, 1);
		draw_text(room_width/2, 250,"Final Score: " +string(score));
		draw_text(room_width/2, 350,"High Score: " +string(highScore));
		draw_text(room_width/2, 450,"Press SPACE or A to restart");
		draw_set_halign(fa_left); //reset the center justify to left justify
	break;
}