/// @description AI

// if player is inside range
if(!instance_exists(objPlayerOne)) exit;

if (point_distance(x, y, objPlayerOne.x, objPlayerOne.y) < 400){
	
		move_towards_point(objPlayerOne.x, objPlayerOne.y, speed);
		var steps_ahead = 10;
		var targetx = objPlayerOne.x+lengthdir_x(steps_ahead*objPlayerOne.speed,objPlayerOne.direction);
		var targety = objPlayerOne.y+lengthdir_y(steps_ahead*objPlayerOne.speed,objPlayerOne.direction);
		var newangle = point_direction(x, y, targetx, targety);
		newangle = image_angle - angle_difference(image_angle, newangle);
		image_angle = lerp(image_angle, newangle, 0.04);
		direction = image_angle;
		
		
		
		if (point_distance(x, y, objPlayerOne.x, objPlayerOne.y) < 150){
			speed -= 0.05;
		} else {
			speed += 0.01	
		}
		
	
		bulletCounterLeft++;
		if (bulletCounterLeft >= 30){
				scrCreateBullet(24, 0, image_angle, bulletSpeed, faction);
				bulletCounterLeft = 0;
		}
		
		bulletCounterRight++;
		if (bulletCounterRight >= 30){		
				scrCreateBullet(24, 48, image_angle, bulletSpeed, faction);
				bulletCounterRight = 0;
		}
		
	
} else
	{
		speed = lerp(speed, originalSpeed, 0.1);
		image_angle = lerp(image_angle, direction, .1);
	}