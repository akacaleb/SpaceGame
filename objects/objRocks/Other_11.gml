/// @description take damage

score += 20;
audio_play_sound(sndRockDeath, 1, false);

instance_destroy();
effect_create_above(ef_explosion, x, y, 4, c_silver);
			var powerdrop = irandom_range(1, 100);

			if !instance_exists(objShieldPowerup) && powerdrop <= 25
			{
				instance_create_layer(x, y, "Instances", objShieldPowerup);
			}
	
if (sprite_index == sprLargeRock)
{
	score -= 10;
	repeat (2)
	{
		var newRock = instance_create_layer(x, y, "Instances", objRocks);
		newRock.sprite_index = sprMediumRock;
		
		newRock.speed = 1.5;
	}
} 
	
else if (sprite_index == sprMediumRock)
{
	score -= 5;
	repeat (4)
	{
		var lastRock = instance_create_layer(x, y, "Instances", objRocks);
		lastRock.sprite_index = sprSmallRock;
		lastRock.speed = 2;
	}
}

repeat (30)
{
	instance_create_layer(x, y, "Instances", objRockDebris);	
}