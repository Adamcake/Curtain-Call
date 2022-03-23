/// @description: P4 BTB curve circle 2
var a, i, c, d;
c = make_colour_hsv(random(255), 150, 245);
d = random(360);
for(i = 0; i < 24; i += 1) {
	a = instance_create(part4Miku2.x, part4Miku2.y, part4p4CurvingApple);
	a.direction = d + i * 360 / 24;
	a.curve = -1;
	a.image_blend = c;
}
