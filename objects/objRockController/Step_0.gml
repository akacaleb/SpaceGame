/// @description spawn rocks

if rockSpawner <= 5
{
	instance_create_layer(irandom_range(0, room_width), irandom_range(0, room_height), "Instances", choose(objLargeRock, objMediumRock, objSmallRock));
	++ rockSpawner;
}