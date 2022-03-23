if(instance_exists(player) && f < 62) {
	x = player.x - 13;
	y = player.y - 28;
	image_alpha = 1 - EaseInQuad(f, 0, 1, 62);
	image_blend = make_colour_hsv(45 - f * 0.55, 245, 200);
	f += 1;
} else {
	instance_destroy();
}
