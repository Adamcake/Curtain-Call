if(f & 1) {
	var a = instance_create(x, y, part4p3LinearApple);
	a.image_blend = make_colour_hsv(random(255), 210, 255);
	a.direction = random(360);
	a.speed = 5 + random(2);
}

f += 1;
