/// @description: P4 fruit from right
var a, i, s;
s = 0;
for(i = 64; i <= room_height; i += 96) {
	a = instance_create(room_width + 12, i, part4p2LineBigApple);
	a.direction = 180;
	a.speed = 17;
	a.image_blend = make_colour_hsv(100, 210 + (s * 32), 255);
	s = !s;
}
