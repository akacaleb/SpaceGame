/// @description fade and die

image_alpha = image_alpha - 0.01; // fade away

if(image_alpha <= 0) //destroy itself when transperancy is 0
{
	instance_destroy();
}