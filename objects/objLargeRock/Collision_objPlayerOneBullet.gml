/// @description collision deflection

score += 10;

instance_destroy();
instance_destroy(objPlayerOneBullet);


instance_create_layer(self.x - 2, self.y + 2, "Instances", objMediumRock);
instance_create_layer(self.x + 2, self.y - 2, "Instances", objMediumRock);

repeat(30)
{
	instance_create_layer(x, y, "Instances", objDebris);
}