var a;
var r360 = 270 + random_range((360 / count) / 4, (360 / count) * 3 / 4);
for(var i = 0; i < count; i += 1) {
	a = instance_create(x, y, part8p1Apple);
	a.direction = r360 + i * 360 / count;
	a.speed = 11.5;
	a.image_blend = make_colour_hsv(hue, 128, 236);
	
	a = instance_create(x, y, part8p1GhostApple);
	a.direction = random(360);
	a.speed = random_range(15, 25);
	a.image_alpha = 0.2;
}
instance_destroy();
