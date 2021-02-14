/// @description player one ship

turnLeft = keyboard_check(ord("A")) || gamepad_button_check(0, gp_padl);
turnRight = keyboard_check(ord("D")) || gamepad_button_check(0, gp_padr);
strafeLeft = keyboard_check(ord("Q")) || gamepad_button_check(0, gp_shoulderlb);
strafeRight = keyboard_check(ord("E")) || gamepad_button_check(0, gp_shoulderrb);
goThrusters = keyboard_check(ord("W")) || gamepad_button_check(0, gp_padu);
stopThrusters = keyboard_check(ord("S")) || gamepad_button_check(0, gp_padd);
shipShoot = keyboard_check_pressed(vk_space) || gamepad_button_check(0, gp_face1);

//MOVEMENT

if turnLeft //rotate ship to the left
{
	image_angle += turnSpeed;
}

if turnRight //rotate ship to the right
{
	image_angle -= turnSpeed;
}

if strafeLeft && abs(speed) <= playerMaxSpeed //strafe ship to the left
{
	motion_add(image_angle + 90, playerSpeed);
}

if strafeRight && abs(speed) <= playerMaxSpeed //strafe ship to the right
{
	motion_add(image_angle - 90, playerSpeed);
}

if goThrusters && abs(speed) <= playerMaxSpeed //accelerate ship forwards
{
	motion_add(image_angle, playerSpeed);	
}

if stopThrusters && abs(speed) > 0 //bring the ship to a stop
{
	friction = playerSpeed;
}
else
{
	friction = 0;	
}

if shipShoot
{
	var inst = instance_create_layer(x, y, "Instances", objPlayerOneBullet);
	inst.direction = image_angle;
}

move_wrap(true, true, sprite_width/2);

