// if player is inside range
if(!instance_exists(objPlayerOne)) exit;

if (point_distance(x, y, objPlayerOne.x, objPlayerOne.y) < 375) && (point_distance(x, y, objPlayerOne.x, objPlayerOne.y) > 64){
	
		move_towards_point(objPlayerOne.x, objPlayerOne.y, speed);
		var steps_ahead = 10;
		var targetx = objPlayerOne.x+lengthdir_x(steps_ahead*objPlayerOne.speed,objPlayerOne.direction);
		var targety = objPlayerOne.y+lengthdir_y(steps_ahead*objPlayerOne.speed,objPlayerOne.direction);
		var newangle = point_direction(x, y, targetx, targety);
		newangle = image_angle - angle_difference(image_angle, newangle);
		image_angle = lerp(image_angle, newangle, 0.04);
	
		bulletCounter++;
		if (bulletCounter >= 60){
				scrCreateBullet(image_angle, bulletSpeed, faction);
				bulletCounter = 0;
		}
		
	
} else
	{
		image_angle = lerp(image_angle, direction, 0.04);
	}