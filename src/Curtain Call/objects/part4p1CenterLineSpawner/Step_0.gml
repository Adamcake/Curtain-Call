if(f < 13) {
	image_xscale = EaseOutCubic(f, 0, 3, 13);
	image_yscale = image_xscale;
} else if(f == 13) {
	image_xscale = 3;
	image_yscale = 3;
}

if(spawn && instance_exists(player)) {
	hue += 255 / 64;
	image_blend = make_colour_hsv(hue, 255, 255);
	image_xscale -= 2 / 43;
	image_yscale = image_xscale;
	
	x = xstart + random_range(-5, 5);
	y = ystart + random_range(-5, 5);
	var a = instance_create(x, y, part4p1CenterLineApple);
	a.direction = point_direction(x, y, player.x, player.y);
	a.speed = 19;
	a.image_blend = image_blend;
}

f += 1;
