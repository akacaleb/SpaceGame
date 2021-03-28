/// @description drop powerup

event_inherited();

var powerdrop = irandom_range(1, 100);

if !instance_exists(objShieldPowerup) && powerdrop <= 25
{
	instance_create_layer(x, y, "Instances", objShieldPowerup);
}