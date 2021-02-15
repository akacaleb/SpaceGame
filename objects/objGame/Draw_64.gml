/// @description GUI

draw_text(room_width/2 - 30, 20, "SCORE: "+string(score));
draw_text(room_width/2 - 30, 40, "LIVES: "+string(lives));
draw_text(20, 20, "High Score: " +string(highScore));

if room = rmRoom && lives <= 0 && !instance_exists(objPlayerOne)
{
	draw_text(room_width/2 - 30, room_height/2, "GAME OVER");
	draw_text(room_width/2 - 30, room_height/2 + 20, "Press SPACE or A to restart");
} else if room = rmRoom && !instance_exists(objPlayerOne)
{
	draw_text(room_width/2 - 30, room_height/2, "Press SPACE or A to start");
}