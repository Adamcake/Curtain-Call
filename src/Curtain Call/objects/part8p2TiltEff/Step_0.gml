f += 1;
if(ending) {
	m -= 1/12;
	if(m <= 0) {
		m = 0;
		instance_destroy();
	}
} else {
	m = min(m + 1/12, 1);
}

__view_set(e__VW.Angle, 0, sin(f * 2 * pi / 75) * 2.5 * m);
