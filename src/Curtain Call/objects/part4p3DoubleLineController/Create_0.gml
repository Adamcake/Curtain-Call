p = 0;
f = 0;
spacing = 28;
var i;
for(i = 0; i < 29; i += 1) {
	apples1[i] = instance_create(x, y, part4p3DoubleLineApple);
	apples1[i].image_blend = make_colour_hsv(93 + (40 * (i & 1)), 180, 252);
	apples2[i] = instance_create(x, y, part4p3DoubleLineApple);
	apples2[i].image_blend = apples1[i].image_blend;
}
