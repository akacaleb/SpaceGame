/// @description player one ship


//controls for keyboard and xbox controller

turnLeft = keyboard_check(ord("A"));
turnRight = keyboard_check(ord("D"));
strafeLeft = keyboard_check(ord("Q")) || gamepad_button_check(0, gp_shoulderl);
strafeRight = keyboard_check(ord("E")) || gamepad_button_check(0, gp_shoulderr);
goThrusters = keyboard_check(ord("W"));
reverseThrust = keyboard_check(ord("S"));
stopThrusters = keyboard_check(vk_shift) || gamepad_button_check(0, gp_face2);
shipShoot = keyboard_check(vk_space) || gamepad_button_check(0, gp_face1);
usePowerUp = keyboard_check(vk_alt) || gamepad_button_check(0, gp_face3);

gamepad_set_axis_deadzone(0, 0.2);
gamepad_set_vibration(0, 0, 0);

image_index = sign(gamepad_axis_value(0, gp_axislh)) + 1;

motion_add(image_angle, playerSpeed * gamepad_button_value(0,gp_shoulderrb));
	if gamepad_button_value(0,gp_shoulderrb) > 0
		{
			gamepad_set_vibration(0, 0.1, 0.3);
			audio_play_sound(sndPlayerOneEngine, 2, false);
		}
		
motion_add(image_angle - 180, playerSpeed * gamepad_button_value(0, gp_shoulderlb));
	if gamepad_button_value(0,gp_shoulderlb) > 0
		{
			gamepad_set_vibration(0, 0.3, 0.1);
			audio_play_sound(sndPlayerOneEngine, 2, false);
		}

image_angle -= turnSpeed * gamepad_axis_value(0, gp_axislh);

if strafeLeft {image_index = 0;}
if strafeRight {image_index = 2;}


	if gamepad_axis_value(0, gp_axislh) < 0
		{
			gamepad_set_vibration(0, 0.2 , 0);
		} 
	
	if gamepad_axis_value(0, gp_axislh) > 0
		{
			gamepad_set_vibration(0, 0, 0.2);
		}

if gamepad_button_check(0, gp_face1)
	{
		gamepad_set_vibration(0, 1, 1);
	}
	
if gamepad_button_check(0, gp_face2)
	{
		gamepad_set_vibration(0, 0.1, 0.1)	
	}

if gamepad_button_check(0, gp_shoulderl)
	{
		gamepad_set_vibration(0, 0.3, 0);
	}

if gamepad_button_check(0, gp_shoulderr)
	{
		gamepad_set_vibration(0, 0, 0.3);
	}

// MOVEMENT

if turnLeft //rotate ship to the left
{
	image_angle += turnSpeed;
	image_index--;
}

if turnRight //rotate ship to the right
{
	image_angle -= turnSpeed;
	image_index++;
}

if strafeLeft //strafe ship to the left
{
	motion_add(image_angle + 90, playerSpeed);
	audio_play_sound(sndPlayerOneEngine, 2, false);
}

if strafeRight //strafe ship to the right
{
	motion_add(image_angle - 90, playerSpeed);
	audio_play_sound(sndPlayerOneEngine, 2, false);
}

if goThrusters //accelerate ship forwards
{
	motion_add(image_angle, playerSpeed);
	audio_play_sound(sndPlayerOneEngine, 2, false);
}
	
if reverseThrust //accelerate ship backwards
{
	motion_add(image_angle - 180, playerSpeed);
	audio_play_sound(sndPlayerOneEngine, 2, false);
}

if stopThrusters && speed > 0 //bring the ship to a stop
{
	friction = playerSpeed * 1.5;
}
else
{
	friction = .001;	
}

if speed > playerMaxSpeed
{
	speed = abs(playerMaxSpeed);	
}


// SHOOTING
if shipShoot && canShoot = true // shoot bullet
{
	var _xx = x + lengthdir_x(24, image_angle);  // adjust x position of bullet spawn
	var _yy = y + lengthdir_y(24, image_angle);  // adjust y position of bullet spawn
	var inst = instance_create_layer(_xx, _yy, "Instances", objPlayerOneBullet); // spawn bullet at nose
	inst.direction = image_angle;// bullets shoot the direction ship is flying
	audio_play_sound(sndPlayerOneShoot, 1, false);
	canShoot = false;
	objGame.shotsFired = objGame.shotsFired + 1
	faction = factions.ally;
	alarm[0] = room_speed * 0.25;
}

//powerup

if usePowerUp && shieldActive = false && objGame.shieldPowerUp = true
{
	instance_create_layer(objPlayerOne.x, objPlayerOne.y,"Instances", objShield);
	objGame.shieldPowerUp = false;
	objGame.havePowerup = false;
	shieldActive = true;
}

move_wrap(true, true, sprite_width/2);