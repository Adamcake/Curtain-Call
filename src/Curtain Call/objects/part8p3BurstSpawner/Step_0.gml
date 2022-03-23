var a, d, i;

if(f mod 25 == 0 or f mod 25 == 12) {
	d = random(360);
	for(i = 0; i < 16; i += 1) {
		a = instance_create(x, y, part8p1GroupApple);
		a.direction = d + i * 360 / 16;
		a.speed = 10.5;
		a.image_blend = make_colour_hsv(f % 255, 230, 230);
	}
}

if(f mod 4 == 0) {
	a = instance_create(random(room_width), -8, part8p3LineApple);
	a.direction = 270;
	a.speed = 13;
	a.image_blend = make_colour_hsv((f + 128) % 255, 230, 230);
	a.image_xscale = 0.75;
	a.image_yscale = 0.75;
}

f += 1;
