// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @description create_bullet
/// @arg offsetX
/// @arg offsetY
/// @arg direction
/// @arg speed
/// @arg faction
function scrCreateBullet(argument0, argument1, argument2, argument3, argument4){
		var offx = argument0;
		var offy = argument1;
		var dir = argument2;
		var spd = argument3;
		var fac = argument4;
		
		var crtr = id;
	
	audio_play_sound(sndPlayerOneShoot, 1, false);
	
	var xx = x + lengthdir_x(offx, image_angle);
	var yy = y + lengthdir_y(offy, image_angle);
	var inst = instance_create_layer(xx, yy, "Instances", objEnemyBullet);

	with (inst)
	{
		direction = dir;
		speed = spd;
		faction = fac;
		creator = crtr;
		image_angle = dir;
		
	}
	
}