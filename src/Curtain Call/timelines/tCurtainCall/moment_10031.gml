/// @description: P9 spawn apples on indicators
var a;
for(var i = -200; i <= 200; i += 100) {
	a = instance_create(p9x + i, (room_height / 2) - (part9CircleController.r + 10), part9RadialApple);
	a.direction = 270;
	a.speed = 12;
	a.accel = 0.5;
	a.image_blend = make_colour_hsv(8 + abs(i) * 10 / 100, 150, 240);
	a = instance_create((room_width / 2) - (part9CircleController.r + 10), p9y + i, part9RadialApple);
	a.direction = 0;
	a.speed = 12;
	a.accel = 0.5;
	a.image_blend = make_colour_hsv(8 + abs(i) * 10 / 100, 150, 240);
}
