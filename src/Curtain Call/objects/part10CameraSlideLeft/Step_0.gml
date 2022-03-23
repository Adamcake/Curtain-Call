__view_set(e__VW.XView, 0, 96 - EaseInOutQuad(f, 0, 96, 25));
with(part10Credits) {
	x = xstart + EaseInOutQuad(other.f, 0, 96, 25);
}

if(f >= 25) {
	instance_destroy();
}

f += 1;
