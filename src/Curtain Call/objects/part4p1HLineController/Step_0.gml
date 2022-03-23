f += 1;
var offset_factor;
var value_factor = dsin(f * 360 / 50);
var wavy_factor = 1;
var a;

if(do_jump) {
	wavy_factor = 1 - clamp((f - 75) / 13, 0, 1);	
}

for(var i = 0; i < 25; i += 1) {
	offset_factor = dsin((f * 360 / 50) + (i * 360 / 10));
	if(f <= 113 || !do_jump) {
		with(bottom[i]) {
			y = ystart - EaseOutCubic(clamp(other.f - i, 0, 12), 0, 160 + (offset_factor * 16 * wavy_factor), 12) - other.bottom_offset;
			image_blend = make_colour_hsv(145, 150 + (100 * offset_factor), 235 + (15 * value_factor));
		}
	}
	with(top[24 - i]) {
		y = ystart + EaseOutCubic(clamp(other.f - i, 0, 12), 0, 160 + (offset_factor * 16), 12);
		image_blend = make_colour_hsv(145, 150 + (100 * offset_factor), 235 + (15 * value_factor));
	}
}

if(f < 75 && !instance_exists(player)) {
	do_jump = false;	
}

if(f >= 75 && f < 113 && do_jump) {
	bottom_offset += 10.5 - ((f - 75) * 0.45);
}

if(f == 113 && do_jump) {
	for(var i = 0; i < 25; i += 1) {
		with(bottom[i]) {
			a = instance_create(x, y, part4p1CurvingApple);
			a.image_blend = image_blend;
			a.direction = 90;
			a.speed = 2.1 + abs(12 - i);
			a.gravity = 0.5;
			a.image_xscale = image_xscale;
			a.image_yscale = image_yscale;
			instance_destroy();
		}
	}
}
