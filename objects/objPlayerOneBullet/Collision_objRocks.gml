/// @description destroy and spawn
score += 20 // killing small rocks is 20

audio_play_sound(sndRockDeath, 1, false);

instance_destroy();

with (other)
{
	instance_destroy();
	
	if (sprite_index == sprLargeRock) // create 2 medium rocks from large rocks
	{
		score -= 10; //10 points for large rocks
		repeat (2)
		{
			var newRock = instance_create_layer(x, y, "Instances", objRocks);
			newRock.sprite_index = sprMediumRock; //make the new rocks medium
			newRock.speed = 1.5;
		}
	} 
	
	else if (sprite_index == sprMediumRock) // create 4 small rocks from medium rocks
	{
		score -= 5 // 15 points for medium rocks 
		repeat (4)
		{
			var lastRock = instance_create_layer(x, y, "Instances", objRocks);
			lastRock.sprite_index = sprSmallRock; // makes the new rocks small
			lastRock.speed = 2;
		}
	}


repeat (30)
	{
		instance_create_layer(x, y, "Instances", objDebris);	
	}

}