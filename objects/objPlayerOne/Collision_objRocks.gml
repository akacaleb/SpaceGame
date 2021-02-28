/// @description death
lives -= 1; //lose one life on death

audio_play_sound(sndPlayerOneDeath, 1, false);

instance_destroy(); // remove player
instance_destroy(objPlayerOneBullet); // remove bullets after death

objGame.alarm[1] = 90


repeat (30)
{
	instance_create_layer(x, y, "Instances", objPlayerDebris);	
}