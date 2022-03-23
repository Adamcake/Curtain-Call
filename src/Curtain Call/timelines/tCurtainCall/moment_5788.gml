/// @description: P5 blue bottom burst
var a, i;
for(i = __view_get(e__VW.XView, 0); i < __view_get(e__VW.XView, 0) + __view_get(e__VW.WView, 0); i += 4) {
	a = instance_create(i, __view_get(e__VW.YView, 0) + __view_get(e__VW.HView, 0), part5DingLineApple);
	a.direction = 90 + random_range(-9, 9);
	a.speed = random_range(10, 16);
	a.gravity = 0.71;
	a.image_blend = make_colour_hsv(((a.direction + 180) * 255 / 360) - 55, 210 + a.speed * 3, 253);
}
instance_destroy(part5BottomSpawner);
