/// @description: P4 fruit from top
var a, i, s;
s = 0;
for(i = 40; i <= room_width; i += 80) {
	a = instance_create(i, -12, part4p2LineBigApple);
	a.direction = 270;
	a.speed = 16;
	a.image_blend = make_colour_hsv(42.5, 188.7, 255 - (25 * s));
	s = !s;
}
