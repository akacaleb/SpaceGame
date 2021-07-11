/// @description Insert description here
// You can write your code in this editor

if !objPlayerOne.goThrusters
{
	instance_destroy();
	objPlayerOne.playerThrust = false;
}


x = objPlayerOne.x + lengthdir_x(-15, image_angle);
y = objPlayerOne.y + lengthdir_y(0, image_angle);
image_angle = objPlayerOne.image_angle;


