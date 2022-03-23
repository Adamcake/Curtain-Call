/// @description: P9 spawn apples on indicators
var a;
for(var i = -148; i <= 148; i += 74) {
	a = instance_create((room_width / 2) + p9x - p9r + i, (room_height / 2) - p9x - p9r - i, part9RadialApple);
	a.direction = 315;
	a.speed = 12;
	a.accel = 0.5;
	a.image_blend = make_colour_hsv(8 + abs(i) * 10 / 74, 150, 240);
	a = instance_create((room_width / 2) + p9y + p9r + i, (room_height / 2) + p9y - p9r + i, part9RadialApple);
	a.direction = 225;
	a.speed = 12;
	a.accel = 0.5;
	a.image_blend = make_colour_hsv(8 + abs(i) * 10 / 74, 150, 240);
}
