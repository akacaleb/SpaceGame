/// @description set up variables
event_inherited();

randomize();

largeRockImage = irandom_range(0, 5);

mediumRockImage = irandom_range(0, 4);

smallRockImage = irandom_range(0, 3);

rockSpin = choose(1, -1);

sprite_index = choose(sprLargeRock, sprMediumRock, sprSmallRock);

if sprite_index = sprLargeRock
{
	image_index = largeRockImage;
}

if sprite_index = sprMediumRock
{
	image_index = mediumRockImage;
}

if sprite_index = sprSmallRock
{
	image_index = smallRockImage;
}


direction = irandom_range(0, 359);

image_angle = irandom_range(0, 359);

image_speed = 0;

speed = 1;
