// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @description create_bullet
/// @arg direction
/// @arg speed
/// @arg faction
function scrCreateBullet(argument0, argument1, argument2){
		var dir = argument0;
		var spd = argument1;
		var fac = argument2;
		var crtr = id;
	
	audio_play_sound(sndPlayerOneShoot, 1, false);
	var inst = instance_create_layer(x, y, "Instances", objEnemyBullet);

	with (inst)
	{
		direction = dir;
		speed = spd;
		faction = fac;
		creator = crtr;
		
	}
	
}