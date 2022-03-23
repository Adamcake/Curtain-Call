/// @description: P5 walls
var a, _y, vleft, vright;
vleft = __view_get(e__VW.XView, 0);
vright = vleft + __view_get(e__VW.WView, 0);

for(_y = 0; _y <= room_height; _y += 20) {
	a = instance_create(vleft - 8, _y, part5WaWallApple);
	a.direction = 0;
	a.speed = 6;
	a.gravity_direction = 180;
	a.gravity = a.speed / 12;
	a.image_blend = make_colour_hsv(147,  255 - (sqr(abs(room_height / 2 - _y)) / (room_height / 3)), 255);
	
	a = instance_create(vright + 8, _y, part5WaWallApple);
	a.direction = 180;
	a.speed = 6;
	a.gravity_direction = 0;
	a.gravity = a.speed / 12;
	a.image_blend = make_colour_hsv(147, 255 - (sqr(abs(room_height / 2 - _y)) / (room_height / 3)), 255);
}
