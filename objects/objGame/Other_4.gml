/// @description level start

if room == rmRoom
{
	instance_create_layer(room_width/2, room_height/2, "Instances", objPlayerOne);
}


if room == rmRoom

{
	repeat(6)
	{
		var xx = choose
			(
				irandom_range(0, room_width * 0.3),
				irandom_range(room_width * 0.7, room_width)
			);
		var yy = choose
			(
				irandom_range(0, room_height * 0.3),
				irandom_range(room_height * 0.7, room_width)
			);
		instance_create_layer(xx, yy, "Instances", objRocks);
	}
	alarm[0] = 60;
}