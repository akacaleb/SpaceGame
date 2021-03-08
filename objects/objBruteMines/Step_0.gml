/// @description movement and exploding
if(!instance_exists(objPlayerOne)) exit;

lifeSpan --;

if lifeSpan = 0{
	effect_create_above(ef_explosion, x, y, 3, c_yellow);
	instance_destroy();
}

if (point_distance(x, y, objPlayerOne.x, objPlayerOne.y) < 200){
		move_towards_point(objPlayerOne.x, objPlayerOne.y, 2);
		image_index = 1;
	}else{
		image_index = 0;
		speed = 0;
	}

	
	move_wrap(true, true, sprite_width/2);