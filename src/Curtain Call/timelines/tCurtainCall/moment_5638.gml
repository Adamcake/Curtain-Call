/// @description: P5 walls
var a, _x, vtop, vbottom;
vtop = __view_get(e__VW.YView, 0);
vbottom = vtop + __view_get(e__VW.HView, 0);

for(_x = 0; _x <= room_width; _x += 20) {
	a = instance_create(_x, vtop - 8, part5WaWallApple);
	a.direction = 270;
	a.speed = 6;
	a.gravity_direction = 90;
	a.gravity = a.speed / 12;
	a.image_blend = make_colour_hsv(147,  255 - (sqr(abs(room_width / 2 - _x)) / (room_width / 3)), 255);
	
	a = instance_create(_x, vbottom + 8, part5WaWallApple);
	a.direction = 90;
	a.speed = 6;
	a.gravity_direction = 270;
	a.gravity = a.speed / 12;
	a.image_blend = make_colour_hsv(147,  255 - (sqr(abs(room_width / 2 - _x)) / (room_width / 3)), 255);
}
