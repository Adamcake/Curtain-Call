/// @description: P4 fruit from bottom-right
var a, i, s, _x, _y;
s = 0;
_x = (room_width / 2) - 10;
_y = room_height + (room_width / 2) + 10;
for(i = 0; _y >= room_height / 2; i += 1) {
	a = instance_create(_x, _y, part4p2LineBigApple);
	a.direction = 135;
	a.speed = 17;
	a.image_blend = make_colour_hsv(100, 210 + (s * 32), 255);
	s = !s;
	_x += 60;
	_y -= 60;
}
