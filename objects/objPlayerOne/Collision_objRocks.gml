/// @description death

instance_destroy();

repeat (30)
{
	instance_create_layer(x, y, "Instances", objDebris);	
}