/// @description destroy and spawn

instance_destroy();

with (other)
{
	instance_destroy();
	
	if (sprite_index == sprLargeRock)
	{
		repeat (2)
		{
			var newRock = instance_create_layer(x, y, "Instances", objRocks);
			newRock.sprite_index = sprMediumRock;
			newRock.speed = 1.5;
		}
	} 
	
	else if (sprite_index == sprMediumRock)
	{
		repeat (2)
		{
			var lastRock = instance_create_layer(x, y, "Instances", objRocks);
			lastRock.sprite_index = sprSmallRock;
			lastRock.speed = 2;
		}
	}

repeat (30)
	{
		instance_create_layer(x, y, "Instances", objDebris);	
	}

}