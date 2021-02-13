/// @description declare variables
randomise()

sprite_index = choose(
	sprSmallRock,
	sprMediumRock,
	sprLargeRock
);

direction = irandom_range(0, 359);
image_angle = irandom_range(0, 359);


speed = 1;

rockSpin = 2;
