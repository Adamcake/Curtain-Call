var a;
if(f mod 5 == 0) {
	a = instance_create(x + lengthdir_x(dist, angle), y + lengthdir_y(dist, angle), part7Apple);
	a.image_blend = col1;
	a.direction = 35 + random(110);
	a.speed = random_range(6, 8);
	a.gravity = 0.4;
	a.red = true;
	a = instance_create(x + lengthdir_x(dist, angle + 180), y + lengthdir_y(dist, angle + 180), part7Apple);
	a.image_blend = col2;
	a.direction = 35 + random(110);
	a.speed = random_range(6, 8);
	a.gravity = 0.4;
	a.red = false;
}

angle += 5.5;
f += 1;
