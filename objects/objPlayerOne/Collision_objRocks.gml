/// @description death
lives -= 1; //lose one life on death

instance_destroy(); // remove player

repeat (30)
{
	instance_create_layer(x, y, "Instances", objDebris);	
}