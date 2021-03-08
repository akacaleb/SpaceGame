/// @description player one ship


//controls for keyboard and xbox controller

turnLeft = keyboard_check(ord("A"))
turnRight = keyboard_check(ord("D"))
strafeLeft = keyboard_check(ord("Q")) || gamepad_button_check(0, gp_shoulderl);
strafeRight = keyboard_check(ord("E")) || gamepad_button_check(0, gp_shoulderr);
goThrusters = keyboard_check(ord("W")) || gamepad_button_check(0, gp_shoulderrb);
reverseThrust = keyboard_check(ord("S")) || gamepad_button_check(0, gp_shoulderlb);
stopThrusters = keyboard_check(vk_shift) || gamepad_button_check(0, gp_face2);
shipShoot = keyboard_check(vk_space) || gamepad_button_check(0, gp_face1);

gamepad_set_axis_deadzone(0, 0.2);
image_angle -= turnSpeed * gamepad_axis_value(0, gp_axislh);

// MOVEMENT

if turnLeft //rotate ship to the left
{
	image_angle += turnSpeed;
}

if turnRight //rotate ship to the right
{
	image_angle -= turnSpeed;
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
	speed = abs(10);	
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

move_wrap(true, true, sprite_width/2);