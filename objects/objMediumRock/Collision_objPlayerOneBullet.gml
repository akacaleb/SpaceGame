/// @description collision deflection

score += 15;

instance_destroy();
instance_destroy(objPlayerOneBullet);


instance_create_layer(self.x - 2, self.y + 2, "Instances", objSmallRock);
instance_create_layer(self.x + 2, self.y - 2, "Instances", objSmallRock);

repeat(20)
{
	instance_create_layer(x, y, "Instances", objDebris);
}