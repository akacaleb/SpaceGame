audio_play_sound(sndPlayerOneDeath, 1, false);

repeat (30)
{
	instance_create_layer(x, y, "Instances", objPlayerDebris);
}

switch(object_index)
{
	case objRaider: score += 15; break;
	case objHunter: score += 30; break;
	case objBrute: score += 50; break;
}