var a, i;
for(i = 0; i < 7; i += 1) {
	a = instance_create(x, y, part4p3LinearApple);
	a.speed = 10;
	a.direction = d + i * 360 / 7;
	a.image_blend = make_colour_hsv(random(255), 210, 255);
}
instance_destroy();
