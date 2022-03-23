/// @description: P6 make miku run
with(p6miku) {
	image_xscale = -image_xscale;
	run = true;
	sprite_index = sDoruWalk;
	image_index = 0;
	y -= 3;
}
