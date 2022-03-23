/// @description: P6 miku 2 burst
var a, i;
with(p6sm2) {
	alarm[1] = -1;
	for(i = 0; i < 12; i += 1) {
		a = instance_create(x, y, part6Apple);
		a.speed = 7;
		a.direction = d + 360 * i / 12;
	}
}
