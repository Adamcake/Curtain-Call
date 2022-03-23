var a, i, _x, c;
if(f mod 4 == 0) {
	c = make_colour_hsv(random(255), 165, 250);
	do {
		_x = random_range(-200, room_width + 200);
	} until abs(_x - lastx) >= 75;
	lastx = _x;
	a = instance_create(_x, room_height + 25, part8p1GroupApple);
	a.direction = 90 + d;
	a.speed = 15.75;
	a.image_blend = c;
}

for(i = 0; i < irandom_range(3, 5); i += 1) {
	a = instance_create(random(room_width), room_height + 9, part8p1GhostApple);
	a.direction = 90 + d;
	a.speed = 24;
	a.image_alpha = 0.3;
}
