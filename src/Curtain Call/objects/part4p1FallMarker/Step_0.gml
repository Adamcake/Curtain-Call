if(vspeed > 9) {
	vspeed = 9;
}

if(f <= 37) {
	var move_factor = EaseInOutQuad(min(f, 25), 0, 1, 25);
	var turn_factor = EaseInOutBack(min(f, 37), 0, 1, 37);
	image_angle = turn_factor * 360;
	x = xstart + ((288 - xstart) * move_factor);
	y = ystart + ((164 - ystart) * move_factor);
	image_alpha = 1 - (move_factor * 0.7);
	image_xscale = 1 + (move_factor * 1.8);
	image_yscale = image_xscale;
}

if(vspeed > 4) {
	image_blend = make_colour_hsv((colour_get_hue(image_blend) + (255 / 36)) mod 255, colour_get_saturation(image_blend), colour_get_value(image_blend));
}

turnspeed = min(10, turnaccel + turnspeed);
image_angle += turnspeed;
f += 1;
