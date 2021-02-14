/// @description collision deflection

instance_destroy();
instance_destroy(objPlayerOneBullet);


instance_create_layer(self.x - 2, self.y + 2, "Instances", objMediumRock);
instance_create_layer(self.x + 2, self.y - 2, "Instances", objMediumRock);