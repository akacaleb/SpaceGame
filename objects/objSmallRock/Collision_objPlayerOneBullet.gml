/// @description collision deflection

score += 20;

instance_destroy();
instance_destroy(objPlayerOneBullet);

repeat(10)
{
	instance_create_layer(x, y, "Instances", objDebris);	
}
-- objGame.rockSpawner