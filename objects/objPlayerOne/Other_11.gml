/// @description take damage

effect_create_above(ef_explosion, x, y, 5, c_orange);
effect_create_below(ef_spark, x,y, 6, c_yellow);
instance_destroy();
instance_destroy(objShield);
	objGame.shieldPowerUp = false;
	objGame.havePowerup = false;
	shieldActive = false;
instance_destroy(objShieldPowerup);	

objGame.waitSpawn  = 90;