/// @description: P5 spawn explosions
var a, d, i, _i, _j, _x, _y;
for(_i = 0; _i <= 1; _i += 1) {
	for(_j = 0; _j <= 1; _j += 1) {
		_x = __view_get(e__VW.XView, 0) + __view_get(e__VW.WView, 0) * _i;
		_y = __view_get(e__VW.YView, 0) + __view_get(e__VW.HView, 0) * _j;
		
		d = random(360);
		for(i = 0; i < 12; i += 1) {
			a = instance_create(_x, _y, part5ViewWrapper);
			a.direction = d + i * 360 / 12;
			a.speed = random_range(23, 30);
			a.image_blend = make_colour_hsv(a.direction * 255 / 360, 190, 255);
		}
	}
}
