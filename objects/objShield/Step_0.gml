/// @description 
x = objPlayerOne.x;
y = objPlayerOne.y;
image_angle = objPlayerOne.image_angle;


if image_alpha <= 0
{
	instance_destroy();
	objPlayerOne.shieldActive = false;
}