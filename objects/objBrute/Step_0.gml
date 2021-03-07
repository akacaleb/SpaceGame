/// @description brute AI

if(!instance_exists(objPlayerOne)) exit;

if (point_distance(x, y, objPlayerOne.x, objPlayerOne.y) < 250){
	    moveCounter++
			if moveCounter >= 60{
				image_angle = irandom_range(0,359);
				moveCounter = 0;
			}
		speed = (lerp(speed, -4, -0.1));
		direction = image_angle;
		
	
} else
	{
		speed = lerp(speed, originalSpeed, 0.1);
		image_angle = lerp(image_angle, direction, .1);
	}