/// @description SpawnOffCamera
/// @arg obj
/// @arg number

function scrSpawnOffCamera(argument0, argument1)
{
	var obj = argument0;
	var num = argument1;
	var xx, yy;
	
	var pad = 128; //extra space for large objects

	repeat(num)
	{
		xx = random_range(0, room_width);
		yy = random_range(0, room_height);

		while point_in_rectangle(xx, yy, global.cameraX - pad, global.cameraY - pad, 
								global.cameraX + global.cameraWidth + pad, 
								global.cameraY + global.cameraHeight +pad)
			{
				xx = random_range(0, room_width);
				yy = random_range(0, room_height);
			}

		instance_create_layer(xx, yy, "Instances", obj);
	}
}