/// @description: P5 blue top burst
var a, i;
for(i = __view_get(e__VW.XView, 0); i < __view_get(e__VW.XView, 0) + __view_get(e__VW.WView, 0); i += 4) {
	a = instance_create(i, __view_get(e__VW.YView, 0), part5DingLineApple);
	a.direction = 270 + random_range(-9, 9);
	a.gravity_direction = 90;
	a.speed = random_range(10, 16);
	a.gravity = 0.71;
	a.image_blend = make_colour_hsv((a.direction * 255 / 360) - 55, 210 + a.speed * 3, 253);
}
