/// @description: P4 inward + outward circles
var dir = 0;
var count = 60;
var a;
repeat(count) {
	a = instance_create(lengthdir_x(500, dir) + (room_width / 2) + random_range(-8, 8), lengthdir_y(500, dir)  + (room_height / 2) + random_range(-8, 8), part4p1CurvingApple);
	a.direction = dir + 160.5 + random(1);
	a.speed = 24;
	dir += 360 / count;
	a.d = false;
	a.t = 2;
	a.image_blend = make_colour_hsv(((dir * 255 / 360) + 90) mod 255, 255, 225);
}
p4circle1.growstart = p4circle1.f;
p4circle1.grow = true;
