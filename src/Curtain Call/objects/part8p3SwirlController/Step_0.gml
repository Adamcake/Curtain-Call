if(f <= 25) {
	var factor = (25 - f) * 10 / 25;
	__view_set(e__VW.XView, 0, random_range(-factor, factor));
	__view_set(e__VW.YView, 0, random_range(-factor, factor));
}

if(shrink1) {
	if(s1f < 44) {
		m -= 0.017;
	} else if(s1f < 44 + 25) {
		m = (1 - 44 * 0.017) + EaseOutQuad(min(s1f - 44, 25), 0, 44 * 0.017, 25);
	} else {
		m = 1.0;
		shrink1 = false;
	}
	s1f += 1;
}

with(part8p3SwirlApple) {
	x = other.x + lengthdir_x(dist * other.m, dir);
	y = other.y + lengthdir_y(dist * other.m, dir);
}

f += 1;
