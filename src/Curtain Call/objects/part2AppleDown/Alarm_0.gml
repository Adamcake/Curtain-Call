/// @description: explode
repeat(choose(3, 4)) {
	a = instance_create(x + random_range(-3, 3), y + random_range(-3, 3), trail);
	a.sprite_index = sprite_index;
	a.image_xscale = 0.4;
	a.image_yscale = 0.4;
	a.image_blend = make_colour_hsv(colour_get_hue(image_blend), irandom_range(13, 80), 250);
	a.gravity = 0.4;
	a.vspeed = random_range(-1, -3);
	a.hspeed = random_range(-2.5, 2.5);
	a.depth = depth;
}
instance_destroy();