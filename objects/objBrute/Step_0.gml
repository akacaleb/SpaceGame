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
		
		
	if dropMines > 0{
		instance_create_layer(x, y, "Instances", objBruteMines);
		dropMines = dropMines - 1;
		alarm[0] = 180;
	}
		
	
} else
	{
		speed = lerp(speed, originalSpeed, 0.1);
		image_angle = lerp(image_angle, direction, .1);
	}