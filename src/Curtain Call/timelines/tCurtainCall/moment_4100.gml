/// @description: P4 fruit from bottom
var a, i, s;
s = 0;
for(i = 43; i <= room_width; i += 80) {
	a = instance_create(i, room_height + 12, part4p2LineBigApple);
	a.direction = 90;
	a.speed = 16;
	a.image_blend = make_colour_hsv(42.5, 188.7, 255 - (25 * s));
	s = !s;
}
